require "rails_helper"

RSpec.describe AttendingMembersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/attending_members").to route_to("attending_members#index")
    end


    it "routes to #show" do
      expect(:get => "/attending_members/1").to route_to("attending_members#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/attending_members").to route_to("attending_members#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/attending_members/1").to route_to("attending_members#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/attending_members/1").to route_to("attending_members#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/attending_members/1").to route_to("attending_members#destroy", :id => "1")
    end

  end
end
