class Product < ApplicationRecord
	has_many:product_option_types
	has_many:option_types, through: :product_option_types
	has_many:product_properties
	has_many:properties, through: :product_properties
	belongs_to:tax_category
	has_many:varients
	belongs_to:shipping_category
	has_many:product_taxons
	has_many:taxons, through: :product_taxons
end
