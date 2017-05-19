class OrdersController < ApplicationController
	def create

		item = Gelato.find(params[:gelato_id])

		order = Order.new(
											user_id: current_user.id,
											quantity: params[:quantity],
											gelato_id: params[:gelato_id],
											subtotal: item.find_subtotal(item, params[:quantity]),
											tax: item.find_tax,
											total: item.find_total
											)
		order.save
		redirect_to "/orders/#{order.id}"
	end

	def show
		@order = Order.find(params[:id])


	end

end
