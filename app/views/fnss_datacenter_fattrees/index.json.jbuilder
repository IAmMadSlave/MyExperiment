json.array!(@fnss_datacenter_fattrees) do |fnss_datacenter_fattree|
  json.extract! fnss_datacenter_fattree, :id, :k_fattree, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url fnss_datacenter_fattree_url(fnss_datacenter_fattree, format: :json)
end
