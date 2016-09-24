class CreateOrderTaxes < ActiveRecord::Migration
  def change
    create_table :order_taxes do |t|
      t.integer :tax_id
      t.float :total
      t.integer :order_id

      t.timestamps null: false
    end
    add_index :order_taxes, :tax_id
    add_index :order_taxes, :order_id
  end
end
