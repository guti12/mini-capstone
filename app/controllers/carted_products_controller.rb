class CartedProductsController < ApplicationController
	
	def index
		if current_user && current_user.cart.any?
				@carted_products = current_user.cart
		end
				
		@carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
	end

	def create
		gelato = Gelato.find(params[:gelato_id])

		carted_product = CartedProduct.new(
																				user_id: current_user.id,
																				quantity: params[:quantity],
																				gelato_id: params[:gelato_id],
																				status: "carted" 
																				)

  	if carted_product.save
  		redirect_to '/carted_products'
  	end
	end

	def destroy
		carted_product = carted_product.find(params[:id])
		carted_product.update(status: "removed")
		flash[:success] = "Item removed from cart."
		redirect_to "/carted_products"
	end


end
