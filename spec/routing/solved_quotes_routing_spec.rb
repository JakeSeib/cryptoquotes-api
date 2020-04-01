require "rails_helper"

RSpec.describe SolvedQuotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/solved_quotes").to route_to("solved_quotes#index")
    end


    it "routes to #show" do
      expect(:get => "/solved_quotes/1").to route_to("solved_quotes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/solved_quotes").to route_to("solved_quotes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/solved_quotes/1").to route_to("solved_quotes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/solved_quotes/1").to route_to("solved_quotes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/solved_quotes/1").to route_to("solved_quotes#destroy", :id => "1")
    end

  end
end
