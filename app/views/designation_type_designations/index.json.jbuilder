json.array!(@designation_type_designations) do |designation_type_designation|
  json.extract! designation_type_designation, :id, :designation_type_id, :designation_id
  json.url designation_type_designation_url(designation_type_designation, format: :json)
end
