class Order < ApplicationRecord
	belongs_to :gelato, optional: true
	belongs_to :user

	has_many :carted_products
	has_many :gelatos, through: :carted_products

	def calculate_totals (carted_products)
		subtotal_sum = 0

		carted_products.each do |carted_products|
			subtotal_sum += carted_product.subtotal
		end

		self.subtotal = subtotal_sum
		self.tax = subtotal * 0.09
		self.total = subtotal + tax
		save
	end


end
