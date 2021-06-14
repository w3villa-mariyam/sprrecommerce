json.extract! taxonomy, :id, :name, :category_id, :taxon_id, :created_at, :updated_at
json.url taxonomy_url(taxonomy, format: :json)
