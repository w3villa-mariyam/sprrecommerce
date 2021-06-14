class Zone < ApplicationRecord
	belongs_to:state
	has_many:tax_rates
	belongs_to:shipping_method
end
