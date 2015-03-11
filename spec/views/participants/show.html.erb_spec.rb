require 'rails_helper'

RSpec.describe "participants/show", :type => :view do
  before(:each) do
    @participant = assign(:participant, Participant.create!(
      :school_id => 1,
      :name => "Name",
      :email => "Email",
      :mobile => "Mobile",
      :gender => "Gender",
      :age => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/2/)
  end
end
