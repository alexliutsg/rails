require 'rails_helper'

RSpec.describe "program_cycles/index", :type => :view do
  before(:each) do
    assign(:program_cycles, [
      ProgramCycle.create!(
        :name => "Name",
        :goal => "Goal",
        :description => "Description"
      ),
      ProgramCycle.create!(
        :name => "Name",
        :goal => "Goal",
        :description => "Description"
      )
    ])
  end

  it "renders a list of program_cycles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Goal".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
