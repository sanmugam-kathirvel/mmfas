class CreateTourPrograms < ActiveRecord::Migration
  def self.up
    create_table :tour_programs do |t|
      t.references :place
      t.references :headquator
      t.string :distances
      t.string :fare
      t.integer :no_of_doctors

      t.timestamps
    end
  end

  def self.down
    drop_table :tour_programs
  end
end
