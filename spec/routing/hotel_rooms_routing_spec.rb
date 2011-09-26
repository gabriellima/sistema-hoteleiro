require "spec_helper"

describe HotelRoomsController do
  describe "routing" do

    it "routes to #index" do
      get("/hotel_rooms").should route_to("hotel_rooms#index")
    end

    it "routes to #new" do
      get("/hotel_rooms/new").should route_to("hotel_rooms#new")
    end

    it "routes to #show" do
      get("/hotel_rooms/1").should route_to("hotel_rooms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hotel_rooms/1/edit").should route_to("hotel_rooms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hotel_rooms").should route_to("hotel_rooms#create")
    end

    it "routes to #update" do
      put("/hotel_rooms/1").should route_to("hotel_rooms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hotel_rooms/1").should route_to("hotel_rooms#destroy", :id => "1")
    end

  end
end
