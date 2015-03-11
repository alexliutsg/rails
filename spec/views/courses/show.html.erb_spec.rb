require 'rails_helper'

RSpec.describe "courses/show", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :school_id => 1,
      :course_code => "Course Code",
      :acronym => "Acronym",
      :district => "District",
      :contact_person => 2,
      :pic => 3,
      :trainer_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Course Code/)
    expect(rendered).to match(/Acronym/)
    expect(rendered).to match(/District/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
