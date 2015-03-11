require 'rails_helper'

RSpec.describe "school_representatives/show", :type => :view do
  before(:each) do
    @school_representative = assign(:school_representative, SchoolRepresentative.create!(
      :school_id => 1,
      :first_name => "First Name",
      :last_name => "Last Name",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Title/)
  end
end
