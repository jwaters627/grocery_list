class Section < ApplicationRecord

	belongs_to :list
	has_many :items

end
