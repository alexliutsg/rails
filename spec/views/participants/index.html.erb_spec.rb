require 'rails_helper'

RSpec.describe "participants/index", :type => :view do
  before(:each) do
    assign(:participants, [
      Participant.create!(
        :school_id => 1,
        :name => "Name",
        :email => "Email",
        :mobile => "Mobile",
        :gender => "Gender",
        :age => 2
      ),
      Participant.create!(
        :school_id => 1,
        :name => "Name",
        :email => "Email",
        :mobile => "Mobile",
        :gender => "Gender",
        :age => 2
      )
    ])
  end

  it "renders a list of participants" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
