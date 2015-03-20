json.array!(@fnss_simple_kary_trees) do |fnss_simple_kary_tree|
  json.extract! fnss_simple_kary_tree, :id, :name, :description, :status, :k_branching_factor, :generator_id, :type_id, :user_id
  json.url fnss_simple_kary_tree_url(fnss_simple_kary_tree, format: :json)
end
