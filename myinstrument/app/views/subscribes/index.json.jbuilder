json.array!(@subscribes) do |subscribe|
  json.extract! subscribe, :id, :subscribe_instrument_sn, :subscribe_user_name, :subscribe_submit_datetime, :subscribe_use_slot0, :subscribe_use_slot1, :subscribe_use_slot2, :subscribe_use_slot3, :subscribe_use_slot4, :subscribe_use_slot5, :subscribe_use_slot6, :subscribe_use_slot7, :subscribe_use_slot8, :subscribe_use_slot9, :subscribe_use_slot10, :subscribe_use_slot11, :subscribe_cost, :subscribe_state
  json.url subscribe_url(subscribe, format: :json)
end
