class Dog < ApplicationRecord

	belongs_to :breed
	has_many :photos

end
