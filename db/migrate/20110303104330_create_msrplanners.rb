class CreateMsrplanners < ActiveRecord::Migration
  def self.up
    create_table :msrplanners do |t|
      t.references :doctor
      t.references :doctor
      t.integer :tft
      t.integer :tfs
      t.integer :ofs
      t.integer :ofc
      t.integer :lac
      t.integer :lacg
      t.integer :vrx
      t.integer :utr
      t.integer :lux
      t.integer :mus
      t.integer :nurxl
      t.integer :cof
      t.integer :ele
      t.integer :eld
      t.integer :input_open
      t.integer :input_receive
      t.integer :input_available
      t.integer :input_utilize
      t.integer :input_closing

      t.timestamps
    end
  end

  def self.down
    drop_table :msrplanners
  end
end
