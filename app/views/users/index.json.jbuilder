json.array!(@users) do |user|
  json.extract! user, :name, :last_name, :second_last_name, :course_id_id, :email, :encrypted_pass
  json.url user_url(user, format: :json)
end
