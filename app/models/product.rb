class Product < ApplicationRecord
	has_many:option_types
	belongs_to:tax_category
end
