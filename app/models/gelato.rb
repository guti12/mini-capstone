class Gelato < ApplicationRecord

	def sale_message
		if price.to_i <= 2
			 "Discount item!" 
		else
			 "Everyday value!!" 
		end
	end

	def tax
		tax_price = (price.to_i + (price.to_i * 0.09))
		tax_price
	end

end
