require 'rails_helper'

RSpec.describe "participants/edit", :type => :view do
  before(:each) do
    @participant = assign(:participant, Participant.create!(
      :school_id => 1,
      :name => "MyString",
      :email => "MyString",
      :mobile => "MyString",
      :gender => "MyString",
      :age => 1
    ))
  end

  it "renders the edit participant form" do
    render

    assert_select "form[action=?][method=?]", participant_path(@participant), "post" do

      assert_select "input#participant_school_id[name=?]", "participant[school_id]"

      assert_select "input#participant_name[name=?]", "participant[name]"

      assert_select "input#participant_email[name=?]", "participant[email]"

      assert_select "input#participant_mobile[name=?]", "participant[mobile]"

      assert_select "input#participant_gender[name=?]", "participant[gender]"

      assert_select "input#participant_age[name=?]", "participant[age]"
    end
  end
end
