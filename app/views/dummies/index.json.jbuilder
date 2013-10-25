json.array!(@dummies) do |dummy|
  json.extract! dummy, 
  json.url dummy_url(dummy, format: :json)
end
