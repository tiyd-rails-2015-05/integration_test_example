json.array!(@parents) do |parent|
  json.extract! parent, :id, :name, :email, :child_name, :teacher_id
  json.url parent_url(parent, format: :json)
end
