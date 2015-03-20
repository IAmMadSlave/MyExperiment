json.array!(@brite_rt_barabasis) do |brite_rt_barabasis|
  json.extract! brite_rt_barabasis, :id, :n, :hs, :ls, :nodeplacement, :m, :bwdist, :bwmin, :bwmax, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url brite_rt_barabasis_url(brite_rt_barabasis, format: :json)
end
