require 'rails_helper'

RSpec.describe "SchoolTimeSlots", :type => :request do
  describe "GET /school_time_slots" do
    it "works! (now write some real specs)" do
      get school_time_slots_path
      expect(response).to have_http_status(200)
    end
  end
end
