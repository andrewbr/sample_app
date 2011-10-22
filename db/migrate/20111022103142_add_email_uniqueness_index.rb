class AddEmailUniquenessIndex < ActiveRecord::Migration
  # double click prevents insert of two instances
  def self.up
    add_index :users, :email, :unique => true
  end

  def self.down
    remove_index :users, :email
  end
end
