json.array!(@courses) do |course|
  json.extract! course, :name, :semester, :major_id
  json.url course_url(course, format: :json)
end
