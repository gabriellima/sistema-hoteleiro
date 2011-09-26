require "spec_helper"

describe HostelRoomsController do
  describe "routing" do

    it "routes to #index" do
      get("/hostel_rooms").should route_to("hostel_rooms#index")
    end

    it "routes to #new" do
      get("/hostel_rooms/new").should route_to("hostel_rooms#new")
    end

    it "routes to #show" do
      get("/hostel_rooms/1").should route_to("hostel_rooms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hostel_rooms/1/edit").should route_to("hostel_rooms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hostel_rooms").should route_to("hostel_rooms#create")
    end

    it "routes to #update" do
      put("/hostel_rooms/1").should route_to("hostel_rooms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hostel_rooms/1").should route_to("hostel_rooms#destroy", :id => "1")
    end

  end
end
