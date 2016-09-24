class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.integer :address_id
      t.string :name

      t.timestamps null: false
    end
    add_index :warehouses, :address_id
  end
end
