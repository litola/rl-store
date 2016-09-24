class AddCategoryIdToProductType < ActiveRecord::Migration
  def change
    add_column :product_types, :category_id, :integer
    add_index :product_types, :category_id
  end
end
