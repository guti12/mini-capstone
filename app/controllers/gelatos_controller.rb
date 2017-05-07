class GelatosController < ApplicationController
	def gelato_items
		@gelato = Gelato.all
		render 'gelato_view.html.erb'
	end

	def index
		@gelatos = Gelato.all
	end

	def show 
		gelato_id = params[:id]
		@gelato = Gelato.find_by(id: gelato_id)
	end

	def new
		
	end

	def create
		gelato = Gelato.new(flavor: params[:flavor],
												price: params[:price],
												description: params[:description]
												)
		gelato.save
	end

end

# <h1>All Contacts</h1>
# <% @contacts.each do |contact| %>
#   <h2>First Name: <a href="www.google.com"><%= contact.first_name %></a></h2>
#   <h2>Last Name: <%= contact.last_name %></h2>
#   <h2><span>Email:</span> <%= contact.email %></h2>
#   <h2>Phone: <%= contact.phone_number %></h2>
#   <br>
# <% end %>