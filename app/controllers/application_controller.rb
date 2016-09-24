class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_categories , :set_vendors, :set_product_types


  private

    def set_vendors
      @vendors = Vendor.all
    end
    def set_categories
       @categories = Category.all
    end
    def set_product_types
       @product_types = ProductType.all
    end
end
