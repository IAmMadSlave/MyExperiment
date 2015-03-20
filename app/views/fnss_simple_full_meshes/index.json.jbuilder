json.array!(@fnss_simple_full_meshes) do |fnss_simple_full_mesh|
  json.extract! fnss_simple_full_mesh, :id, :name, :description, :status, :full_mesh_node, :generator_id, :type_id, :user_id
  json.url fnss_simple_full_mesh_url(fnss_simple_full_mesh, format: :json)
end
