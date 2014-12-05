json.array!(@availables) do |available|
  json.extract! available, :id, :instrument_id, :available_datetime, :available_timeslot
  json.url available_url(available, format: :json)
end
