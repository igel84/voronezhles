class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.text :info
			t.string :real_file_name
      t.string :real_content_type
      t.integer :real_file_size

      t.timestamps
    end
  end
end
