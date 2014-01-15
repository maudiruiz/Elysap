class ChangeDataTypeForBirthday < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.change :birthday, :datetime
    end
  end
  def self.down
    change_table :users do |t|
      t.change :birthday, :string
    end
  end
end
