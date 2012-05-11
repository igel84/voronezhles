class EditCostProject < ActiveRecord::Migration
  def up
  	change_column :house_prices, :count, :float, :default => 0
  end

  def down
  	change_column :house_prices, :count, :integer, :default => 0
  end
end
