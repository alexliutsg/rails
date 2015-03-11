require 'rails_helper'

RSpec.describe "trainer_time_slots/show", :type => :view do
  before(:each) do
    @trainer_time_slot = assign(:trainer_time_slot, TrainerTimeSlot.create!(
      :trainer_id => 1,
      :start_time => "Start Time",
      :end_time => "End Time",
      :status => "Status",
      :remarks => "Remarks"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Start Time/)
    expect(rendered).to match(/End Time/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Remarks/)
  end
end
