json.array!(@brite_td_asbarabasi_rt_waxmen) do |brite_td_asbarabasi_rt_waxman|
  json.extract! brite_td_asbarabasi_rt_waxman, :id, :name, :edgeconn, :k, :bwinter, :bwintermin, :bwintermax, :bwintra, :bwintramin, :bwintramax, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url brite_td_asbarabasi_rt_waxman_url(brite_td_asbarabasi_rt_waxman, format: :json)
end
