json.array!(@teachers) do |teacher|
  json.extract! teacher, :name, :last_name, :second_last_name
  json.url teacher_url(teacher, format: :json)
end
