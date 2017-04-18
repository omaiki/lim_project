require 'rails_helper'

RSpec.describe UrlContentsController, type: :controller do

  Url.create(:page_url => "https://ruby-doc.org/")

  it "routes to url_contents#index of a specific URL" do
      expect(:get => "/urls/1/url_contents").to route_to("urls_contents#index")
    end

  it "routes to url_contents#show for a specific URL" do
      expect(:get => "/urls/1/url_contents/1").to route_to("urls_contents#show, :id => 1")
    end

end
