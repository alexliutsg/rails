json.array!(@school_time_slots) do |school_time_slot|
  json.extract! school_time_slot, :id, :school_id, :date, :start_time, :end_time, :status, :remarks
  json.url school_time_slot_url(school_time_slot, format: :json)
end
