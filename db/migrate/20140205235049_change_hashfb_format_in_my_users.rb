class ChangeHashfbFormatInMyUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.change :hash_fb, :blob
    end
  end
  def self.down
    change_table :users do |t|
      t.change :hash_fb, :text
    end
  end
end
