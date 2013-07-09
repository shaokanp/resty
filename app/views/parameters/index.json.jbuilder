json.array!(@parameters) do |parameter|
  json.extract! parameter, :name, :optional, :example_value, :endpoint_id
  json.url parameter_url(parameter, format: :json)
end