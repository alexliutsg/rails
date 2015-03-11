require "rails_helper"

RSpec.describe ProgramCyclesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/program_cycles").to route_to("program_cycles#index")
    end

    it "routes to #new" do
      expect(:get => "/program_cycles/new").to route_to("program_cycles#new")
    end

    it "routes to #show" do
      expect(:get => "/program_cycles/1").to route_to("program_cycles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/program_cycles/1/edit").to route_to("program_cycles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/program_cycles").to route_to("program_cycles#create")
    end

    it "routes to #update" do
      expect(:put => "/program_cycles/1").to route_to("program_cycles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/program_cycles/1").to route_to("program_cycles#destroy", :id => "1")
    end

  end
end
