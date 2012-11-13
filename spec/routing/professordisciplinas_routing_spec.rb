require "spec_helper"

describe ProfessordisciplinasController do
  describe "routing" do

    it "routes to #index" do
      get("/professordisciplinas").should route_to("professordisciplinas#index")
    end

    it "routes to #new" do
      get("/professordisciplinas/new").should route_to("professordisciplinas#new")
    end

    it "routes to #show" do
      get("/professordisciplinas/1").should route_to("professordisciplinas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/professordisciplinas/1/edit").should route_to("professordisciplinas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/professordisciplinas").should route_to("professordisciplinas#create")
    end

    it "routes to #update" do
      put("/professordisciplinas/1").should route_to("professordisciplinas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/professordisciplinas/1").should route_to("professordisciplinas#destroy", :id => "1")
    end

  end
end
