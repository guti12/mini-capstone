class Gelato < ApplicationRecord
	belongs_to :supplier
	has_many :images

	def sale_message
		if discounted?
			 "Discount item!" 
		else
			 "Everyday value!!" 
		end
	end

	def discounted?
		price < 3
	end

	def first_image_url
		image_collection = images
		if image_collection.length == 0
			"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png"
		else
			image_collection.first.first_image_url
		end
	end

	def tax
		price * 0.09
	end

	def total
		price + tax
	end



end
