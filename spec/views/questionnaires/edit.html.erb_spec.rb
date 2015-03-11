require 'rails_helper'

RSpec.describe "questionnaires/edit", :type => :view do
  before(:each) do
    @questionnaire = assign(:questionnaire, Questionnaire.create!(
      :type => "",
      :course_enrollment_id => 1,
      :qns_1 => "MyString",
      :qns_2 => "MyString",
      :qns_3 => "MyString",
      :qns_4 => "MyString",
      :qns_5 => "MyString",
      :qns_6 => "MyString",
      :qns_7 => "MyString",
      :qns_8 => "MyString",
      :qns_9 => "MyString"
    ))
  end

  it "renders the edit questionnaire form" do
    render

    assert_select "form[action=?][method=?]", questionnaire_path(@questionnaire), "post" do

      assert_select "input#questionnaire_type[name=?]", "questionnaire[type]"

      assert_select "input#questionnaire_course_enrollment_id[name=?]", "questionnaire[course_enrollment_id]"

      assert_select "input#questionnaire_qns_1[name=?]", "questionnaire[qns_1]"

      assert_select "input#questionnaire_qns_2[name=?]", "questionnaire[qns_2]"

      assert_select "input#questionnaire_qns_3[name=?]", "questionnaire[qns_3]"

      assert_select "input#questionnaire_qns_4[name=?]", "questionnaire[qns_4]"

      assert_select "input#questionnaire_qns_5[name=?]", "questionnaire[qns_5]"

      assert_select "input#questionnaire_qns_6[name=?]", "questionnaire[qns_6]"

      assert_select "input#questionnaire_qns_7[name=?]", "questionnaire[qns_7]"

      assert_select "input#questionnaire_qns_8[name=?]", "questionnaire[qns_8]"

      assert_select "input#questionnaire_qns_9[name=?]", "questionnaire[qns_9]"
    end
  end
end
