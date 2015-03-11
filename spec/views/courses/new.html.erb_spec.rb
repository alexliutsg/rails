require 'rails_helper'

RSpec.describe "courses/new", :type => :view do
  before(:each) do
    assign(:course, Course.new(
      :school_id => 1,
      :course_code => "MyString",
      :acronym => "MyString",
      :district => "MyString",
      :contact_person => 1,
      :pic => 1,
      :trainer_id => 1
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_school_id[name=?]", "course[school_id]"

      assert_select "input#course_course_code[name=?]", "course[course_code]"

      assert_select "input#course_acronym[name=?]", "course[acronym]"

      assert_select "input#course_district[name=?]", "course[district]"

      assert_select "input#course_contact_person[name=?]", "course[contact_person]"

      assert_select "input#course_pic[name=?]", "course[pic]"

      assert_select "input#course_trainer_id[name=?]", "course[trainer_id]"
    end
  end
end
