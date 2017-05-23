class GelatosController < ApplicationController
	def gelato_items
		@gelato = Gelato.all
		render 'gelato_view.html.erb'
	end

	def index
		@gelatos = Gelato.all
		sort_attribute = params[:sort]
		sort_order = params[:sort_order]
		discount = params[:discount]
		search_term = params[:search_term]
		category = params[:category]

		if category	
			@gelatos = Category.find_by(name: "wearable").gelatos
		end

		if search_term
			@gelatos = @gelato.where(
															"flavor iLIKE ? OR description iLIKE ?", 
															"%#{search_term}%",
															"%#{search_term}%"
															)
		end

		if discount
			@gelatos = @gelatos.where("price < ?", discount)
		end

		if sort_attribute && sort_order
			@gelatos = Gelato.all.order(sort_attribute => sort_order)
		elsif sort_attribute
			@gelatos = Gelato.all.order(sort_attribute)
		end
	end

	def show 
		# if params[:id] == "random"
		# 	@gelato = Gelato.all.sample
		# else
		# gelato_id = params[:id]
		@gelato = Gelato.find(params[:id])
	end

	def new
		
	end

	def create
		gelato = Gelato.new(flavor: params[:flavor],
												price: params[:price],
												description: params[:description]
												)
		gelato.save
		flash[:success] = "Flavor successfully created."
		redirect_to "/gelatos/#{ gelato.id}"
	end

	def edit
		@gelato = Gelato.find_by(id: params[:id])
	end

	def update
		@gelato = Gelato.find_by(id: params[:id])
		@gelato.assign_attributes(
															flavor: params[:flavor],
															price: params[:price],
															description: params[:description])
		gelato.save

		flash[:success] = "Flavor successfully updated."
		redirect_to "/gelatos/#{ gelato.id }"
	end

	def destroy
		gelato = Gelato.find(params[:id])
		gelato.destroy

		flash[:success] = "Flavor successfully destroyed."
		redirect_to "/gelatos"
	end

	def random
		gelato = Gelato.all.sample
		redirect_to "/gelatos/#{gelato.id}"
	end

end
