class CreateStandaredVisits < ActiveRecord::Migration
  def self.up
    create_table :standared_visits do |t|
      t.references :doctor
      t.references :doctor
      t.references :doctor
      t.references :call
      t.references :product
      t.references :product
      t.references :product
      t.references :month

      t.timestamps
    end
  end

  def self.down
    drop_table :standared_visits
  end
end
