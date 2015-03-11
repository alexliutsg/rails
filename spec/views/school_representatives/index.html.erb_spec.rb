require 'rails_helper'

RSpec.describe "school_representatives/index", :type => :view do
  before(:each) do
    assign(:school_representatives, [
      SchoolRepresentative.create!(
        :school_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title"
      ),
      SchoolRepresentative.create!(
        :school_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title"
      )
    ])
  end

  it "renders a list of school_representatives" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
