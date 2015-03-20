json.array!(@generator_forms) do |generator_form|
  json.extract! generator_form, :id, :name, :description, :status, :generator_id, :type_id, :user_id
  json.url generator_form_url(generator_form, format: :json)
end
