require 'rails_helper'

RSpec.describe "course_enrollments/show", :type => :view do
  before(:each) do
    @course_enrollment = assign(:course_enrollment, CourseEnrollment.create!(
      :course_id => 1,
      :participant_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
