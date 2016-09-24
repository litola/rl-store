class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.float :price
      t.string :name
      t.integer :qty
      t.string :description
      t.integer :category_id
      t.integer :product_type
      t.integer :vendor_id

      t.timestamps null: false
    end
    add_index :products, :category_id
    add_index :products, :product_type
    add_index :products, :vendor_id
  end
end
