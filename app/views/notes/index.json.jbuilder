json.array!(@notes) do |note|
  json.extract! note, :body
  json.url note_url(note, format: :json)
end
