require 'rails_helper'

RSpec.describe "SchoolRepresentatives", :type => :request do
  describe "GET /school_representatives" do
    it "works! (now write some real specs)" do
      get school_representatives_path
      expect(response).to have_http_status(200)
    end
  end
end
