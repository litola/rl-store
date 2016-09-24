class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :external_number
      t.string :country
      t.string :neighborhood
      t.string :cp
      t.string :state
      t.string :city

      t.timestamps null: false
    end
  end
end
