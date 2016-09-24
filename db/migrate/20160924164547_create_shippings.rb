class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.string :region
      t.float :price

      t.timestamps null: false
    end
  end
end
