class Gelato < ApplicationRecord
	belongs_to :supplier

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

	def tax
		price * 0.09
	end

	def total
		price + tax
	end

end
