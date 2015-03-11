require 'rails_helper'

RSpec.describe "trainers/show", :type => :view do
  before(:each) do
    @trainer = assign(:trainer, Trainer.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Club Represented/)
    expect(rendered).to match(/Qualification/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Home District/)
    expect(rendered).to match(/Work District/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Note/)
  end
end
