require 'rails_helper'

RSpec.describe "organizations/index", :type => :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
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
      ),
      Organization.create!(
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
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Primary Name".to_s, :count => 2
    assert_select "tr>td", :text => "Alternative Names".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Numbers".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Fax Numbers".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Persons".to_s, :count => 2
    assert_select "tr>td", :text => "Remarks".to_s, :count => 2
  end
end
