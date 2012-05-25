require "spec_helper"

describe ServerInsTransactionsController do
  describe "routing" do

    it "routes to #index" do
      get("/server_ins_transactions").should route_to("server_ins_transactions#index")
    end

    it "routes to #new" do
      get("/server_ins_transactions/new").should route_to("server_ins_transactions#new")
    end

    it "routes to #show" do
      get("/server_ins_transactions/1").should route_to("server_ins_transactions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/server_ins_transactions/1/edit").should route_to("server_ins_transactions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/server_ins_transactions").should route_to("server_ins_transactions#create")
    end

    it "routes to #update" do
      put("/server_ins_transactions/1").should route_to("server_ins_transactions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/server_ins_transactions/1").should route_to("server_ins_transactions#destroy", :id => "1")
    end

  end
end
