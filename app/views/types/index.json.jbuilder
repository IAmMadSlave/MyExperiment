json.array!(@types) do |type|
  json.extract! type, :id, :name, :generator_id
  json.url type_url(type, format: :json)
end
