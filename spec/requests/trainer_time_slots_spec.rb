require 'rails_helper'

RSpec.describe "TrainerTimeSlots", :type => :request do
  describe "GET /trainer_time_slots" do
    it "works! (now write some real specs)" do
      get trainer_time_slots_path
      expect(response).to have_http_status(200)
    end
  end
end
