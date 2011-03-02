class CreateTowns < ActiveRecord::Migration
  def self.up
    create_table :towns do |t|
      t.string :town

      t.timestamps
    end
  end

  def self.down
    drop_table :towns
  end
end
