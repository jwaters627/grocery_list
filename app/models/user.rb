class User < ApplicationRecord

	has_secure_password

	has_and_belongs_to_many :lists

	scope :sorted, lambda { order("id ASC") }

end
