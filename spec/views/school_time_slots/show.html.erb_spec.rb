require 'rails_helper'

RSpec.describe "school_time_slots/show", :type => :view do
  before(:each) do
    @school_time_slot = assign(:school_time_slot, SchoolTimeSlot.create!(
      :school_id => 1,
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
