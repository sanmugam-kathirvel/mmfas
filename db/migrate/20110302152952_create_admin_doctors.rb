class CreateAdminDoctors < ActiveRecord::Migration
  def self.up
    create_table :admin_doctors do |t|
      t.string :name
      t.string :doctor_type

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_doctors
  end
end
