class TaxCategory < ApplicationRecord
	has_many:products
	has_many:tax_rates
end
