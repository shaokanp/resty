json.array!(@endpoints) do |endpoint|
  json.extract! endpoint, :description, :method_type, :url, :detail, :resource_id
  json.url endpoint_url(endpoint, format: :json)
end