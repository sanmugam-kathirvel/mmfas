class AddAddressToDoctor < ActiveRecord::Migration
  def self.up
    add_column :doctors, :address, :text
  end

  def self.down
    remove_column :doctors, :address
  end
end
