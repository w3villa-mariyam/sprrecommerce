class ProductTaxon < ApplicationRecord
	belongs_to:taxon
	belongs_to:product
end
