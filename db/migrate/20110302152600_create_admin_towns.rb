class CreateAdminTowns < ActiveRecord::Migration
  def self.up
    create_table :admin_towns do |t|
      t.string :town

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_towns
  end
end
