class ProductsController < ApplicationController

	def index
		@products = Product.all

	end

	def test
	
	end
	#DELETE /products/1

#POSTS /posts/:id/upvote
	def upvote
		@product = Product.find(parms[:id])
		@vote = @product.votes.new(user_id: current_user)
		if @vote.save
			redirect_to products_path, notice: 'Post was succesfully upvoted'
		else
			redirect_to products_path, notice: 'You have already voted'
		end
	end		
end
