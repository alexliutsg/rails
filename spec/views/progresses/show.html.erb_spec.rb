require 'rails_helper'

RSpec.describe "progresses/show", :type => :view do
  before(:each) do
    @progress = assign(:progress, Progress.create!(
      :program_cycle_id => 1,
      :organization_id => 2,
      :pitching_status => "Pitching Status",
      :pitching_remarks => "Pitching Remarks",
      :program_status => "Program Status",
      :program_remarks => "Program Remarks"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Pitching Status/)
    expect(rendered).to match(/Pitching Remarks/)
    expect(rendered).to match(/Program Status/)
    expect(rendered).to match(/Program Remarks/)
  end
end
