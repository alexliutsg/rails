require 'rails_helper'

RSpec.describe "CourseEnrollments", :type => :request do
  describe "GET /course_enrollments" do
    it "works! (now write some real specs)" do
      get course_enrollments_path
      expect(response).to have_http_status(200)
    end
  end
end
