json.array!(@designation_types) do |designation_type|
  json.extract! designation_type, :id, :name
  json.url designation_type_url(designation_type, format: :json)
end
