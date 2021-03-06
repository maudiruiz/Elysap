class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]


 
 # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :name, :gender, :birthday, :zipcode, :hash_fb

  # attr_accessible :title, :body

	  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
	  user = User.where(:provider => auth.provider, :uid => auth.uid).first
	  unless user
	  	# logger.info auth
	    user = User.create(name:auth.extra.raw_info.name,
	                         provider:auth.provider,
	                         uid:auth.uid,
	                         gender:auth.extra.raw_info.gender,
	                         birthday:auth.info.birthday,
	                         hash_fb: auth.to_json,
				 			 email:auth.info.email,
	                         password:Devise.friendly_token[0,20]
	                         )
	  end
	  user
	end
end
