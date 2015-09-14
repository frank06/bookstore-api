json.array!(@books) do |book|
  json.extract! book, :id, :title, :price, :author_id, :publisher_id, :publisher_type
  json.url book_url(book, format: :json)
end
