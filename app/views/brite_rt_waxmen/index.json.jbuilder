json.array!(@brite_rt_waxmen) do |brite_rt_waxman|
  json.extract! brite_rt_waxman, :id, :name, :n, :hs, :ls, :nodeplacement, :growth_type, :alpha, :beta, :m, :bwdist, :bwmin, :bwmax, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url brite_rt_waxman_url(brite_rt_waxman, format: :json)
end
