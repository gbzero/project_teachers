json.array!(@comments) do |comment|
  json.extract! comment, :teacher_id, :course_id, :user_id, :date_post, :content
  json.url comment_url(comment, format: :json)
end
