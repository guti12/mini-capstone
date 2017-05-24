class CartedProductsController < ApplicationController
	def create
		carted_product = CartedProducts.new(
																				user_id: current_user.id,
																				quantity: params[:quantity],
																				gelato_id: params[:gelato_id] 
																				)
	end

	def show
		
	end

end
