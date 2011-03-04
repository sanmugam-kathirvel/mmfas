class CreatePersonaldatas < ActiveRecord::Migration
  def self.up
    create_table :personaldatas do |t|
      t.string :head_quators_name
      t.text :head_quators_address
      t.integer :land_line
      t.integer :mobile_no
      t.string :name_of_am
      t.string :mail
      t.integer :am_land_line
      t.integer :am_mobile_no
      t.string :name_of_dm
      t.string :dm_email
      t.integer :dm_land_line
      t.integer :dm_mobile_no

      t.timestamps
    end
  end

  def self.down
    drop_table :personaldatas
  end
end
