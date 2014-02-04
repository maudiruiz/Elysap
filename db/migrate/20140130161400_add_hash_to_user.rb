class AddHashToUser < ActiveRecord::Migration
  def change
    add_column :users, :hash_fb, :text
  end
end
