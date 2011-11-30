class AddMinimumQuantityIncrementFields < ActiveRecord::Migration
  def self.up
    add_column :variants, :minimum_quantity_increment, :integer
    add_column :products, :minimum_quantity_increment, :integer
  end

  def self.down
    remove_column :products, :minimum_quantity_increment
    remove_column :variants, :minimum_quantity_increment
  end
end
