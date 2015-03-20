json.array!(@create_fnss_simple_rings) do |create_fnss_simple_ring|
  json.extract! create_fnss_simple_ring, :id, :n
  json.url create_fnss_simple_ring_url(create_fnss_simple_ring, format: :json)
end
