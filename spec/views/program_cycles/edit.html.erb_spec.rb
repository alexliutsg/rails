require 'rails_helper'

RSpec.describe "program_cycles/edit", :type => :view do
  before(:each) do
    @program_cycle = assign(:program_cycle, ProgramCycle.create!(
      :name => "MyString",
      :goal => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit program_cycle form" do
    render

    assert_select "form[action=?][method=?]", program_cycle_path(@program_cycle), "post" do

      assert_select "input#program_cycle_name[name=?]", "program_cycle[name]"

      assert_select "input#program_cycle_goal[name=?]", "program_cycle[goal]"

      assert_select "input#program_cycle_description[name=?]", "program_cycle[description]"
    end
  end
end
