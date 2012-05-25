require "spec_helper"

describe MasterServersController do
  describe "routing" do

    it "routes to #index" do
      get("/master_servers").should route_to("master_servers#index")
    end

    it "routes to #new" do
      get("/master_servers/new").should route_to("master_servers#new")
    end

    it "routes to #show" do
      get("/master_servers/1").should route_to("master_servers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/master_servers/1/edit").should route_to("master_servers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/master_servers").should route_to("master_servers#create")
    end

    it "routes to #update" do
      put("/master_servers/1").should route_to("master_servers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/master_servers/1").should route_to("master_servers#destroy", :id => "1")
    end

  end
end
