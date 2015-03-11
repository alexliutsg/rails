json.array!(@organizations) do |organization|
  json.extract! organization, :id, :region_id, :organization_type, :primary_name, :alternative_names, :address, :contact_numbers, :email, :fax_numbers, :website, :contact_persons, :remarks
  json.url organization_url(organization, format: :json)
end
