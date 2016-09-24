class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :category_id

      t.timestamps null: false
    end
    add_index :vendors, :category_id
  end
end
