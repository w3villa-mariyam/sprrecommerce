class State < ApplicationRecord
	has_many:zones
	belongs_to:country
end
