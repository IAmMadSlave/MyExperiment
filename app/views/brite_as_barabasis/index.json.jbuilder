json.array!(@brite_as_barabasis) do |brite_as_barabasis|
  json.extract! brite_as_barabasis, :id, :n, :hs, :ls, :nodeplacement, :m, :bwdist, :bwmin, :bwmax, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url brite_as_barabasis_url(brite_as_barabasis, format: :json)
end
