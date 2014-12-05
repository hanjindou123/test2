json.array!(@instruments) do |instrument|
  json.extract! instrument, :id, :instrument_sn, :instrument_name, :instrument_class, :instrument_address, :instrument_brief, :instrument_detail, :instrument_state, :instrument_cost_per_hour, :instrument_assistant, :instrument_assessor, :instrument_administrator
  json.url instrument_url(instrument, format: :json)
end
