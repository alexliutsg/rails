json.array!(@school_representatives) do |school_representative|
  json.extract! school_representative, :id, :school_id, :first_name, :last_name, :title
  json.url school_representative_url(school_representative, format: :json)
end
