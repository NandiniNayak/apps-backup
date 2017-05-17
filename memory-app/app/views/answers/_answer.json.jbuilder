json.extract! answer, :id, :ans, :correct, :question_id, :person_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)