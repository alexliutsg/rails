require 'rails_helper'

RSpec.describe "participants/new", :type => :view do
  before(:each) do
    assign(:participant, Participant.new(
      :school_id => 1,
      :name => "MyString",
      :email => "MyString",
      :mobile => "MyString",
      :gender => "MyString",
      :age => 1
    ))
  end

  it "renders new participant form" do
    render

    assert_select "form[action=?][method=?]", participants_path, "post" do

      assert_select "input#participant_school_id[name=?]", "participant[school_id]"

      assert_select "input#participant_name[name=?]", "participant[name]"

      assert_select "input#participant_email[name=?]", "participant[email]"

      assert_select "input#participant_mobile[name=?]", "participant[mobile]"

      assert_select "input#participant_gender[name=?]", "participant[gender]"

      assert_select "input#participant_age[name=?]", "participant[age]"
    end
  end
end
