json.array!(@participants) do |participant|
  json.extract! participant, :id, :school_id, :name, :email, :mobile, :gender, :age
  json.url participant_url(participant, format: :json)
end
