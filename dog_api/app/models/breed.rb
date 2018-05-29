class Breed < ApplicationRecord
	
	has_many :dogs
	has_many :photos , through: :dogs

	validates :name, :uniqueness => true

end
