# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

addr = Address.where( street: "Rio Guadalquivir", external_number: "422",
country: "Mexico", state: "NL", city: "San Pedro", neighborhood: "Del Valle",
cp:"1532451")
addr.destroy_all

Category.destroy_all
ProductType.destroy_all
Vendor.destroy_all
Tax.destroy_all


electronics = Category.create name:"Electronics"
books = Category.create name:"Books"
movies = Category.create name:"Movies"
clothes = Category.create name:"Clothes"

ProductType.create name: "Phones", category_id: electronics.id
ProductType.create name: "Laptops", category_id: electronics.id
ProductType.create name: "Tablets", category_id: electronics.id

ProductType.create name: "Horrror", category_id: books.id
ProductType.create name: "Fiction", category_id: books.id
ProductType.create name: "Sex", category_id: books.id

ProductType.create name: "Horror", category_id: movies.id
ProductType.create name: "Comedy", category_id: movies.id
ProductType.create name: "Action", category_id: movies.id

ProductType.create name: "T-Shirts", category_id: clothes.id
ProductType.create name: "Shorts", category_id: clothes.id
ProductType.create name: "Jeans", category_id: clothes.id

addr = Address.create( street: "Rio Guadalquivir", external_number: "422",
country: "Mexico", state: "NL", city: "San Pedro", neighborhood: "Del Valle",
cp:"1532451")

Vendor.create name:"Nike"
Vendor.create name:"Apple"
Vendor.create name:"Editorial"

Warehouse.create name:"Almacen I"
Warehouse.create name:"Almacen II"

Tax.create name:"IVA"
Tax.create name:"ISR"

Store.create name:"La tienda de lito"
