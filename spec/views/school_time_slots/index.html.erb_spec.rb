require 'rails_helper'

RSpec.describe "school_time_slots/index", :type => :view do
  before(:each) do
    assign(:school_time_slots, [
      SchoolTimeSlot.create!(
        :school_id => 1,
        :start_time => "Start Time",
        :end_time => "End Time",
        :status => "Status",
        :remarks => "Remarks"
      ),
      SchoolTimeSlot.create!(
        :school_id => 1,
        :start_time => "Start Time",
        :end_time => "End Time",
        :status => "Status",
        :remarks => "Remarks"
      )
    ])
  end

  it "renders a list of school_time_slots" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Start Time".to_s, :count => 2
    assert_select "tr>td", :text => "End Time".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Remarks".to_s, :count => 2
  end
end
