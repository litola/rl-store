class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :address
      t.string :name

      t.timestamps null: false
    end
    add_index :stores, :address
  end
end
