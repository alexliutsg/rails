json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :first_name, :last_name, :title, :payment_rate, :club_represented, :qualification, :email, :mobile, :home_district, :work_district, :status, :note
  json.url trainer_url(trainer, format: :json)
end
