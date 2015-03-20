json.array!(@fnss_simple_dumbbells) do |fnss_simple_dumbbell|
  json.extract! fnss_simple_dumbbell, :id, :name, :description, :status, :mone_nodedumbell, :mtwo_nodedumbell, :generator_id, :type_id, :user_id
  json.url fnss_simple_dumbbell_url(fnss_simple_dumbbell, format: :json)
end
