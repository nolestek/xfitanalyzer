json.array!(@wods) do |wod|
  json.extract! wod, :description, :result, :user_id
  json.url wod_url(wod, format: :json)
end