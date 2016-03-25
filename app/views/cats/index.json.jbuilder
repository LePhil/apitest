json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :description, :age
  json.url cat_url(cat, format: :json)
end
