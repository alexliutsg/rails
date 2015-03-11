require 'rails_helper'

RSpec.describe "course_enrollments/edit", :type => :view do
  before(:each) do
    @course_enrollment = assign(:course_enrollment, CourseEnrollment.create!(
      :course_id => 1,
      :participant_id => 1
    ))
  end

  it "renders the edit course_enrollment form" do
    render

    assert_select "form[action=?][method=?]", course_enrollment_path(@course_enrollment), "post" do

      assert_select "input#course_enrollment_course_id[name=?]", "course_enrollment[course_id]"

      assert_select "input#course_enrollment_participant_id[name=?]", "course_enrollment[participant_id]"
    end
  end
end
