json.array!(@trainer_time_slots) do |trainer_time_slot|
  json.extract! trainer_time_slot, :id, :trainer_id, :date, :start_time, :end_time, :status, :remarks
  json.url trainer_time_slot_url(trainer_time_slot, format: :json)
end
