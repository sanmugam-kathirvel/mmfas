class AddAmcToStandaredVisit < ActiveRecord::Migration
  def self.up
    add_column :standared_visits, :amc, :integer
  end

  def self.down
    remove_column :standared_visits, :amc
  end
end
