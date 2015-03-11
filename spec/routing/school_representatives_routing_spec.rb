require "rails_helper"

RSpec.describe SchoolRepresentativesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/school_representatives").to route_to("school_representatives#index")
    end

    it "routes to #new" do
      expect(:get => "/school_representatives/new").to route_to("school_representatives#new")
    end

    it "routes to #show" do
      expect(:get => "/school_representatives/1").to route_to("school_representatives#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/school_representatives/1/edit").to route_to("school_representatives#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/school_representatives").to route_to("school_representatives#create")
    end

    it "routes to #update" do
      expect(:put => "/school_representatives/1").to route_to("school_representatives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/school_representatives/1").to route_to("school_representatives#destroy", :id => "1")
    end

  end
end
