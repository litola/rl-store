class Product < ActiveRecord::Base
belongs_to :category
belongs_to :vendor
belongs_to :product_type

end
