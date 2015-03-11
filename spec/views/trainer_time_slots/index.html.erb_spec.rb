require 'rails_helper'

RSpec.describe "trainer_time_slots/index", :type => :view do
  before(:each) do
    assign(:trainer_time_slots, [
      TrainerTimeSlot.create!(
        :trainer_id => 1,
        :start_time => "Start Time",
        :end_time => "End Time",
        :status => "Status",
        :remarks => "Remarks"
      ),
      TrainerTimeSlot.create!(
        :trainer_id => 1,
        :start_time => "Start Time",
        :end_time => "End Time",
        :status => "Status",
        :remarks => "Remarks"
      )
    ])
  end

  it "renders a list of trainer_time_slots" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Start Time".to_s, :count => 2
    assert_select "tr>td", :text => "End Time".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Remarks".to_s, :count => 2
  end
end
