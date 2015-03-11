require 'rails_helper'

RSpec.describe "courses/index", :type => :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :school_id => 1,
        :course_code => "Course Code",
        :acronym => "Acronym",
        :district => "District",
        :contact_person => 2,
        :pic => 3,
        :trainer_id => 4
      ),
      Course.create!(
        :school_id => 1,
        :course_code => "Course Code",
        :acronym => "Acronym",
        :district => "District",
        :contact_person => 2,
        :pic => 3,
        :trainer_id => 4
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Course Code".to_s, :count => 2
    assert_select "tr>td", :text => "Acronym".to_s, :count => 2
    assert_select "tr>td", :text => "District".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
