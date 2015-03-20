json.array!(@fnss_simple_lines) do |fnss_simple_line|
  json.extract! fnss_simple_line, :id, :name, :description, :status, :line_node, :generator_id, :type_id, :user_id
  json.url fnss_simple_line_url(fnss_simple_line, format: :json)
end
