json.array!(@program_cycles) do |program_cycle|
  json.extract! program_cycle, :id, :name, :start_date, :end_date, :goal, :description
  json.url program_cycle_url(program_cycle, format: :json)
end
