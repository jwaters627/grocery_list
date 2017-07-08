class List < ApplicationRecord

	has_and_belongs_to_many :users

	scope :sorted, lambda { order("position ASC") }

end
