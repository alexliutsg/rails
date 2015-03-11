require 'rails_helper'

RSpec.describe "school_time_slots/edit", :type => :view do
  before(:each) do
    @school_time_slot = assign(:school_time_slot, SchoolTimeSlot.create!(
      :school_id => 1,
      :start_time => "MyString",
      :end_time => "MyString",
      :status => "MyString",
      :remarks => "MyString"
    ))
  end

  it "renders the edit school_time_slot form" do
    render

    assert_select "form[action=?][method=?]", school_time_slot_path(@school_time_slot), "post" do

      assert_select "input#school_time_slot_school_id[name=?]", "school_time_slot[school_id]"

      assert_select "input#school_time_slot_start_time[name=?]", "school_time_slot[start_time]"

      assert_select "input#school_time_slot_end_time[name=?]", "school_time_slot[end_time]"

      assert_select "input#school_time_slot_status[name=?]", "school_time_slot[status]"

      assert_select "input#school_time_slot_remarks[name=?]", "school_time_slot[remarks]"
    end
  end
end
