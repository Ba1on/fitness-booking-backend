require "rails_helper"

RSpec.describe RoomSlotsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/room_slots").to route_to("room_slots#index")
    end

    it "routes to #new" do
      expect(:get => "/room_slots/new").to route_to("room_slots#new")
    end

    it "routes to #show" do
      expect(:get => "/room_slots/1").to route_to("room_slots#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/room_slots/1/edit").to route_to("room_slots#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/room_slots").to route_to("room_slots#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/room_slots/1").to route_to("room_slots#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/room_slots/1").to route_to("room_slots#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/room_slots/1").to route_to("room_slots#destroy", :id => "1")
    end

  end
end
