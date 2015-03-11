require 'rails_helper'

RSpec.describe "program_cycles/show", :type => :view do
  before(:each) do
    @program_cycle = assign(:program_cycle, ProgramCycle.create!(
      :name => "Name",
      :goal => "Goal",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Goal/)
    expect(rendered).to match(/Description/)
  end
end
