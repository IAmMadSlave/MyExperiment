json.array!(@brite_as_waxmen) do |brite_as_waxman|
  json.extract! brite_as_waxman, :id, :n, :hs, :ls, :nodeplacement, :growth_type, :alpha, :beta, :m, :bwdist, :bwmin, :bwmax, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url brite_as_waxman_url(brite_as_waxman, format: :json)
end
