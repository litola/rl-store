class ChangeProductType < ActiveRecord::Migration
  def change
    rename_column :products, :product_type, :product_type_id
  end
end
