json.array!(@numbers) do |number|
  json.extract! number, :id
  json.url number_url(number, format: :json)
end
