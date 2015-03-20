json.array!(@fnss_datacenter_three_tiers) do |fnss_datacenter_three_tier|
  json.extract! fnss_datacenter_three_tier, :id, :n_corethree_tier, :n_aggregationthree_tier, :n_edgesthree_tier, :n_hoststhree_tier, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url fnss_datacenter_three_tier_url(fnss_datacenter_three_tier, format: :json)
end
