class List < ApplicationRecord

	has_and_belongs_to_many :users
	has_many :items

	scope :sorted, lambda { order("id ASC") }

	
end
