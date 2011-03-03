class CreateHeadquators < ActiveRecord::Migration
  def self.up
    create_table :headquators do |t|
      t.string :head_quator

      t.timestamps
    end
  end

  def self.down
    drop_table :headquators
  end
end
