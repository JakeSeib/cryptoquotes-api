require 'rails_helper'

RSpec.describe "SolvedQuotes", type: :request do
  describe "GET /solved_quotes" do
    it "works! (now write some real specs)" do
      get solved_quotes_path
      expect(response).to have_http_status(200)
    end
  end
end
