require 'rails_helper'

RSpec.describe "trainers/index", :type => :view do
  before(:each) do
    assign(:trainers, [
      Trainer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :payment_rate => "9.99",
        :club_represented => "Club Represented",
        :qualification => "Qualification",
        :email => "Email",
        :mobile => "Mobile",
        :home_district => "Home District",
        :work_district => "Work District",
        :status => "Status",
        :note => "Note"
      ),
      Trainer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :payment_rate => "9.99",
        :club_represented => "Club Represented",
        :qualification => "Qualification",
        :email => "Email",
        :mobile => "Mobile",
        :home_district => "Home District",
        :work_district => "Work District",
        :status => "Status",
        :note => "Note"
      )
    ])
  end

  it "renders a list of trainers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Club Represented".to_s, :count => 2
    assert_select "tr>td", :text => "Qualification".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Home District".to_s, :count => 2
    assert_select "tr>td", :text => "Work District".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
