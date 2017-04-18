require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  describe "url index actions" do

    before {@input_url = Url.create(:page_url => "https://ruby-doc.org/") }

     it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "routes to url index" do
      expect(:get => "/urls").to route_to("urls#index")
    end

    it "routes to url show" do
      expect(:get => "/urls/1").to route_to("urls#show", :id => "1")
    end

  end

end
