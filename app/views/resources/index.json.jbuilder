json.array!(@resources) do |resource|
  json.extract! resource, :name, :description
  json.url resource_url(resource, format: :json)
end