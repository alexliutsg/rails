require "rails_helper"

RSpec.describe TrainerTimeSlotsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/trainer_time_slots").to route_to("trainer_time_slots#index")
    end

    it "routes to #new" do
      expect(:get => "/trainer_time_slots/new").to route_to("trainer_time_slots#new")
    end

    it "routes to #show" do
      expect(:get => "/trainer_time_slots/1").to route_to("trainer_time_slots#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/trainer_time_slots/1/edit").to route_to("trainer_time_slots#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/trainer_time_slots").to route_to("trainer_time_slots#create")
    end

    it "routes to #update" do
      expect(:put => "/trainer_time_slots/1").to route_to("trainer_time_slots#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/trainer_time_slots/1").to route_to("trainer_time_slots#destroy", :id => "1")
    end

  end
end
