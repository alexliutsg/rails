require 'rails_helper'

RSpec.describe "school_representatives/edit", :type => :view do
  before(:each) do
    @school_representative = assign(:school_representative, SchoolRepresentative.create!(
      :school_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit school_representative form" do
    render

    assert_select "form[action=?][method=?]", school_representative_path(@school_representative), "post" do

      assert_select "input#school_representative_school_id[name=?]", "school_representative[school_id]"

      assert_select "input#school_representative_first_name[name=?]", "school_representative[first_name]"

      assert_select "input#school_representative_last_name[name=?]", "school_representative[last_name]"

      assert_select "input#school_representative_title[name=?]", "school_representative[title]"
    end
  end
end
