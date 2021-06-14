class Taxon < ApplicationRecord
	belongs_to:taxonomy
	has_many:product_taxons
	has_many:products, through: :product_taxons
end
