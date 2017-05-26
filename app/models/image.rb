class Image < ApplicationRecord
	belongs_to :gelato
	validates :url, presence: true
end
