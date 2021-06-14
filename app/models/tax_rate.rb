class TaxRate < ApplicationRecord
	belongs_to:zone
	belongs_to:tax_category
end
