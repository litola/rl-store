class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.float :total

      t.timestamps null: false
    end
    add_index :orders, :cart_id
  end
end
