json.array!(@fnss_datacenter_two_tiers) do |fnss_datacenter_two_tier|
  json.extract! fnss_datacenter_two_tier, :id, :name, :description, :status, :n_coretwo_tier, :n_edgetwo_tier, :h_hoststwo_tier, :generator_id, :type_id, :user_id
  json.url fnss_datacenter_two_tier_url(fnss_datacenter_two_tier, format: :json)
end
