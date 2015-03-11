require 'rails_helper'

RSpec.describe "organizations/show", :type => :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :region_id => 1,
      :type => "Type",
      :primary_name => "Primary Name",
      :alternative_names => "Alternative Names",
      :address => "Address",
      :contact_numbers => "Contact Numbers",
      :email => "Email",
      :fax_numbers => "Fax Numbers",
      :website => "Website",
      :contact_persons => "Contact Persons",
      :remarks => "Remarks"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Primary Name/)
    expect(rendered).to match(/Alternative Names/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Contact Numbers/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Fax Numbers/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Contact Persons/)
    expect(rendered).to match(/Remarks/)
  end
end
