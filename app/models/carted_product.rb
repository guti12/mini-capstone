class CartedProduct < ApplicationRecord
	belongs_to :gelato
	belongs_to :user
	belongs_to :order, optional: true
	validates :quantity, presence: true
	validates :quantity, numericality: {greater_than: 0}

	def subtotal
		gelato.price * quantity

	end

	
end
