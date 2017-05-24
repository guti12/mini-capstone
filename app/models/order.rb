class Order < ApplicationRecord
	belongs_to :gelato, optional: true
	belongs_to :user, optional: true

	has_many :carted_products
	has_many :gelatos, through: :carted_products

end
