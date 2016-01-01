json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :day, :phrase
  json.url phrase_url(phrase, format: :json)
end
