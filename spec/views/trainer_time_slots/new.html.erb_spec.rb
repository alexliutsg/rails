require 'rails_helper'

RSpec.describe "trainer_time_slots/new", :type => :view do
  before(:each) do
    assign(:trainer_time_slot, TrainerTimeSlot.new(
      :trainer_id => 1,
      :start_time => "MyString",
      :end_time => "MyString",
      :status => "MyString",
      :remarks => "MyString"
    ))
  end

  it "renders new trainer_time_slot form" do
    render

    assert_select "form[action=?][method=?]", trainer_time_slots_path, "post" do

      assert_select "input#trainer_time_slot_trainer_id[name=?]", "trainer_time_slot[trainer_id]"

      assert_select "input#trainer_time_slot_start_time[name=?]", "trainer_time_slot[start_time]"

      assert_select "input#trainer_time_slot_end_time[name=?]", "trainer_time_slot[end_time]"

      assert_select "input#trainer_time_slot_status[name=?]", "trainer_time_slot[status]"

      assert_select "input#trainer_time_slot_remarks[name=?]", "trainer_time_slot[remarks]"
    end
  end
end
