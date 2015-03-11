require 'rails_helper'

RSpec.describe "questionnaires/show", :type => :view do
  before(:each) do
    @questionnaire = assign(:questionnaire, Questionnaire.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Qns 1/)
    expect(rendered).to match(/Qns 2/)
    expect(rendered).to match(/Qns 3/)
    expect(rendered).to match(/Qns 4/)
    expect(rendered).to match(/Qns 5/)
    expect(rendered).to match(/Qns 6/)
    expect(rendered).to match(/Qns 7/)
    expect(rendered).to match(/Qns 8/)
    expect(rendered).to match(/Qns 9/)
  end
end
