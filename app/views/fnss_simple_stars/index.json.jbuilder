json.array!(@fnss_simple_stars) do |fnss_simple_star|
  json.extract! fnss_simple_star, :id, :name, :description, :status, :star_node, :generator_id, :type_id, :user_id
  json.url fnss_simple_star_url(fnss_simple_star, format: :json)
end
