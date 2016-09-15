class ProductsController < ApplicationController

	def index
		@products = Product.all

	end

	def test
	
	end
end
