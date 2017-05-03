class GelatosController < ApplicationController
	def gelato_items
		@gelato = Gelato.first
		render 'gelato_view.html.erb'
	end
end
