require 'rails_helper'

RSpec.describe "progresses/index", :type => :view do
  before(:each) do
    assign(:progresses, [
      Progress.create!(
        :program_cycle_id => 1,
        :organization_id => 2,
        :pitching_status => "Pitching Status",
        :pitching_remarks => "Pitching Remarks",
        :program_status => "Program Status",
        :program_remarks => "Program Remarks"
      ),
      Progress.create!(
        :program_cycle_id => 1,
        :organization_id => 2,
        :pitching_status => "Pitching Status",
        :pitching_remarks => "Pitching Remarks",
        :program_status => "Program Status",
        :program_remarks => "Program Remarks"
      )
    ])
  end

  it "renders a list of progresses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Pitching Status".to_s, :count => 2
    assert_select "tr>td", :text => "Pitching Remarks".to_s, :count => 2
    assert_select "tr>td", :text => "Program Status".to_s, :count => 2
    assert_select "tr>td", :text => "Program Remarks".to_s, :count => 2
  end
end
