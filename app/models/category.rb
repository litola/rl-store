class Category < ActiveRecord::Base
  #se hace dinamico los scopes para las categorias
  uniq.map{|c| c.name}.each do |v|
   self.class.class_eval do
     define_method v.downcase.split(" ").join("_") do
       find_by_name(v)
     end
   end
  end

# scope :electronics, -> {find_by_name("Electronics")}
# scope :books, -> {find_by_name("Books")}
# scope :movies, -> {find_by_name("Movies")}
# scope :Clothes, -> {find_by_name("Clothes")}
end
