require 'rails_helper'

RSpec.describe "course_enrollments/new", :type => :view do
  before(:each) do
    assign(:course_enrollment, CourseEnrollment.new(
      :course_id => 1,
      :participant_id => 1
    ))
  end

  it "renders new course_enrollment form" do
    render

    assert_select "form[action=?][method=?]", course_enrollments_path, "post" do

      assert_select "input#course_enrollment_course_id[name=?]", "course_enrollment[course_id]"

      assert_select "input#course_enrollment_participant_id[name=?]", "course_enrollment[participant_id]"
    end
  end
end
