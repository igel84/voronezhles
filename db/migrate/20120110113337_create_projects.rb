class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :info, :default=>''
      t.text :body, :default=>''
      t.integer :price, :default=>0
      t.integer :area, :default=>0

      t.timestamps
    end
  end
end
