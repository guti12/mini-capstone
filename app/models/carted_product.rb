class CartedProduct < ApplicationRecord
	belongs_to :gelato
	belongs_to :order, optional: true

end