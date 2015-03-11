require 'rails_helper'

RSpec.describe "Questionnaires", :type => :request do
  describe "GET /questionnaires" do
    it "works! (now write some real specs)" do
      get questionnaires_path
      expect(response).to have_http_status(200)
    end
  end
end
