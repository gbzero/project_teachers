json.array!(@majors) do |major|
  json.extract! major, :name
  json.url major_url(major, format: :json)
end
