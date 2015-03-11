require 'rails_helper'

RSpec.describe "trainers/new", :type => :view do
  before(:each) do
    assign(:trainer, Trainer.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString",
      :payment_rate => "9.99",
      :club_represented => "MyString",
      :qualification => "MyString",
      :email => "MyString",
      :mobile => "MyString",
      :home_district => "MyString",
      :work_district => "MyString",
      :status => "MyString",
      :note => "MyString"
    ))
  end

  it "renders new trainer form" do
    render

    assert_select "form[action=?][method=?]", trainers_path, "post" do

      assert_select "input#trainer_first_name[name=?]", "trainer[first_name]"

      assert_select "input#trainer_last_name[name=?]", "trainer[last_name]"

      assert_select "input#trainer_title[name=?]", "trainer[title]"

      assert_select "input#trainer_payment_rate[name=?]", "trainer[payment_rate]"

      assert_select "input#trainer_club_represented[name=?]", "trainer[club_represented]"

      assert_select "input#trainer_qualification[name=?]", "trainer[qualification]"

      assert_select "input#trainer_email[name=?]", "trainer[email]"

      assert_select "input#trainer_mobile[name=?]", "trainer[mobile]"

      assert_select "input#trainer_home_district[name=?]", "trainer[home_district]"

      assert_select "input#trainer_work_district[name=?]", "trainer[work_district]"

      assert_select "input#trainer_status[name=?]", "trainer[status]"

      assert_select "input#trainer_note[name=?]", "trainer[note]"
    end
  end
end
