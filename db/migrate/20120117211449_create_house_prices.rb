class CreateHousePrices < ActiveRecord::Migration
  def change
    create_table :house_prices do |t|
      t.integer :size, :default=>0
      t.integer :count, :default=>0
      t.integer :project_id

      t.timestamps
    end
  end
end
