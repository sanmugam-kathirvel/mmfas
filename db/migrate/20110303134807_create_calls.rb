class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.string :type_of_call

      t.timestamps
    end
  end

  def self.down
    drop_table :calls
  end
end
