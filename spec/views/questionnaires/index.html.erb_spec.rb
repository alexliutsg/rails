require 'rails_helper'

RSpec.describe "questionnaires/index", :type => :view do
  before(:each) do
    assign(:questionnaires, [
      Questionnaire.create!(
        :type => "Type",
        :course_enrollment_id => 1,
        :qns_1 => "Qns 1",
        :qns_2 => "Qns 2",
        :qns_3 => "Qns 3",
        :qns_4 => "Qns 4",
        :qns_5 => "Qns 5",
        :qns_6 => "Qns 6",
        :qns_7 => "Qns 7",
        :qns_8 => "Qns 8",
        :qns_9 => "Qns 9"
      ),
      Questionnaire.create!(
        :type => "Type",
        :course_enrollment_id => 1,
        :qns_1 => "Qns 1",
        :qns_2 => "Qns 2",
        :qns_3 => "Qns 3",
        :qns_4 => "Qns 4",
        :qns_5 => "Qns 5",
        :qns_6 => "Qns 6",
        :qns_7 => "Qns 7",
        :qns_8 => "Qns 8",
        :qns_9 => "Qns 9"
      )
    ])
  end

  it "renders a list of questionnaires" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Qns 1".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 2".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 3".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 4".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 5".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 6".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 7".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 8".to_s, :count => 2
    assert_select "tr>td", :text => "Qns 9".to_s, :count => 2
  end
end
