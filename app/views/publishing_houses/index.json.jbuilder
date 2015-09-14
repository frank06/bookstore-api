json.array!(@publishing_houses) do |publishing_house|
  json.extract! publishing_house, :id, :name, :discount
  json.url publishing_house_url(publishing_house, format: :json)
end
