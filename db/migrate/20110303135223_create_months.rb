class CreateMonths < ActiveRecord::Migration
  def self.up
    create_table :months do |t|
      t.date :month

      t.timestamps
    end
  end

  def self.down
    drop_table :months
  end
end
