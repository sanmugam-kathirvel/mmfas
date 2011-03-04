class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :pcode
      t.string :pname
      t.string :category
      t.date :date_of_manufacture
      t.date :date_of_expird
      t.integer :maximum_price

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
