class Order < ApplicationRecord
	belongs_to :gelato, optional: true
	belongs_to :user

	has_many :carted_products
	has_many :gelatos, through: :carted_products

end
