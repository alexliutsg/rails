require 'rails_helper'

RSpec.describe "program_cycles/new", :type => :view do
  before(:each) do
    assign(:program_cycle, ProgramCycle.new(
      :name => "MyString",
      :goal => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new program_cycle form" do
    render

    assert_select "form[action=?][method=?]", program_cycles_path, "post" do

      assert_select "input#program_cycle_name[name=?]", "program_cycle[name]"

      assert_select "input#program_cycle_goal[name=?]", "program_cycle[goal]"

      assert_select "input#program_cycle_description[name=?]", "program_cycle[description]"
    end
  end
end
