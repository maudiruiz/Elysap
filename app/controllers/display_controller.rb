class DisplayController < ApplicationController
  def index
  end
  def bienvenido
    #Before release
    if !current_user
      redirect_to :root
    end

  end
  def usuarios
    @users = User.all

  end
end
