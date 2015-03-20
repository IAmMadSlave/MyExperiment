json.array!(@fnss_datacenter_bcubes) do |fnss_datacenter_bcube|
  json.extract! fnss_datacenter_bcube, :id, :k_bcube, :n_bcube, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url fnss_datacenter_bcube_url(fnss_datacenter_bcube, format: :json)
end
