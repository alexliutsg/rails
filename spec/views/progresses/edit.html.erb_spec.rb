require 'rails_helper'

RSpec.describe "progresses/edit", :type => :view do
  before(:each) do
    @progress = assign(:progress, Progress.create!(
      :program_cycle_id => 1,
      :organization_id => 1,
      :pitching_status => "MyString",
      :pitching_remarks => "MyString",
      :program_status => "MyString",
      :program_remarks => "MyString"
    ))
  end

  it "renders the edit progress form" do
    render

    assert_select "form[action=?][method=?]", progress_path(@progress), "post" do

      assert_select "input#progress_program_cycle_id[name=?]", "progress[program_cycle_id]"

      assert_select "input#progress_organization_id[name=?]", "progress[organization_id]"

      assert_select "input#progress_pitching_status[name=?]", "progress[pitching_status]"

      assert_select "input#progress_pitching_remarks[name=?]", "progress[pitching_remarks]"

      assert_select "input#progress_program_status[name=?]", "progress[program_status]"

      assert_select "input#progress_program_remarks[name=?]", "progress[program_remarks]"
    end
  end
end
