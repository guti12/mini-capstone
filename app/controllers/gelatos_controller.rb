class GelatosController < ApplicationController
	def gelato_items
		@gelato = gelato.first
		render 'gelato_view.html.erb'
	end
end
