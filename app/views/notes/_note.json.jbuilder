json.extract! note, :id, :name, :body, :created_at, :updated_at
json.url note_url(note, format: :json)