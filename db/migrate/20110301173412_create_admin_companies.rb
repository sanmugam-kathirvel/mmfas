class CreateAdminCompanies < ActiveRecord::Migration
  def self.up
    create_table :admin_companies do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_companies
  end
end
