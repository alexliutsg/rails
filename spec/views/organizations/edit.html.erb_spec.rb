require 'rails_helper'

RSpec.describe "organizations/edit", :type => :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :region_id => 1,
      :type => "",
      :primary_name => "MyString",
      :alternative_names => "MyString",
      :address => "MyString",
      :contact_numbers => "MyString",
      :email => "MyString",
      :fax_numbers => "MyString",
      :website => "MyString",
      :contact_persons => "MyString",
      :remarks => "MyString"
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input#organization_region_id[name=?]", "organization[region_id]"

      assert_select "input#organization_type[name=?]", "organization[type]"

      assert_select "input#organization_primary_name[name=?]", "organization[primary_name]"

      assert_select "input#organization_alternative_names[name=?]", "organization[alternative_names]"

      assert_select "input#organization_address[name=?]", "organization[address]"

      assert_select "input#organization_contact_numbers[name=?]", "organization[contact_numbers]"

      assert_select "input#organization_email[name=?]", "organization[email]"

      assert_select "input#organization_fax_numbers[name=?]", "organization[fax_numbers]"

      assert_select "input#organization_website[name=?]", "organization[website]"

      assert_select "input#organization_contact_persons[name=?]", "organization[contact_persons]"

      assert_select "input#organization_remarks[name=?]", "organization[remarks]"
    end
  end
end
