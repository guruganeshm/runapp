json.array!(@designations) do |designation|
  json.extract! designation, :id, :name, :for_search_id, :course_duration
  json.url designation_url(designation, format: :json)
end
