class Category < ApplicationRecord
	has_many :category_gelatos
	has_many :gelatos, through: :category_gelatos
end
