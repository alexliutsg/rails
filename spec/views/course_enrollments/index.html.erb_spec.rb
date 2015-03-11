require 'rails_helper'

RSpec.describe "course_enrollments/index", :type => :view do
  before(:each) do
    assign(:course_enrollments, [
      CourseEnrollment.create!(
        :course_id => 1,
        :participant_id => 2
      ),
      CourseEnrollment.create!(
        :course_id => 1,
        :participant_id => 2
      )
    ])
  end

  it "renders a list of course_enrollments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
