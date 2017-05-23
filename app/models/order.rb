class Order < ApplicationRecord
	belongs_to :gelato, optional: true
	belongs_to :user, optional: true

end
