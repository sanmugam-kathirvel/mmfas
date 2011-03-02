class CreateAdminClassifydoctors < ActiveRecord::Migration
  def self.up
    create_table :admin_classifydoctors do |t|
      t.references :town
      t.integer :ophthalmologist
      t.integer :physiologists
      t.integer :neurosurgeons
      t.integer :cardiologist
      t.integer :allopathy
      t.integer :pediatrician
      t.integer :urologists
      t.integer :surgeons
      t.integer :other
      t.integer :total

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_classifydoctors
  end
end
