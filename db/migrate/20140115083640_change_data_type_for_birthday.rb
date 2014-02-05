class ChangeDataTypeForBirthday < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.change :birthday, :datetime
    end
    change_table :users do |t|
      t.change :hash_fb, :binary
    end
  end
  def self.down
    change_table :users do |t|
      t.change :birthday, :string
    end
    change_table :users do |t|
      t.change :hash_fb, :binary
    end
  end
end
