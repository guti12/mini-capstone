class OrdersController < ApplicationController
	def create

		carted_products = current_user.cart


		order = Order.new(user_id: current_user.id,)
		order.save

		carted_products.update_all(status: "purchased", order_id: order.id)
		order.calculate_totals(carted_products)

		redirect_to "/orders/#{order.id}"
	end

	def show
		@order = Order.find(params[:id])


	end

end
