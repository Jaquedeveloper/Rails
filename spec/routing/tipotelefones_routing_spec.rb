require "spec_helper"

describe TipotelefonesController do
  describe "routing" do

    it "routes to #index" do
      get("/tipotelefones").should route_to("tipotelefones#index")
    end

    it "routes to #new" do
      get("/tipotelefones/new").should route_to("tipotelefones#new")
    end

    it "routes to #show" do
      get("/tipotelefones/1").should route_to("tipotelefones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipotelefones/1/edit").should route_to("tipotelefones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipotelefones").should route_to("tipotelefones#create")
    end

    it "routes to #update" do
      put("/tipotelefones/1").should route_to("tipotelefones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipotelefones/1").should route_to("tipotelefones#destroy", :id => "1")
    end

  end
end
