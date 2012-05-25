require "spec_helper"

describe ServerInstancesController do
  describe "routing" do

    it "routes to #index" do
      get("/server_instances").should route_to("server_instances#index")
    end

    it "routes to #new" do
      get("/server_instances/new").should route_to("server_instances#new")
    end

    it "routes to #show" do
      get("/server_instances/1").should route_to("server_instances#show", :id => "1")
    end

    it "routes to #edit" do
      get("/server_instances/1/edit").should route_to("server_instances#edit", :id => "1")
    end

    it "routes to #create" do
      post("/server_instances").should route_to("server_instances#create")
    end

    it "routes to #update" do
      put("/server_instances/1").should route_to("server_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/server_instances/1").should route_to("server_instances#destroy", :id => "1")
    end

  end
end
