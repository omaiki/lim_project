require 'rails_helper'

RSpec.describe Url, type: :model do
   let(:input_url) { Url.create(:page_url => "https://ruby-doc.org/")}

  let (:invalid_url) {Url.create(:page_url => "")}

  context Url do
    it "is valid when parameters are filled" do
      input_url.valid?
      expect(input_url.errors[:input_url]).to be_empty
    end

    it "is invalid when missing required input parameter" do
      invalid_url.valid?
      expect(invalid_url.errors[:page_url]).to include("can't be blank")
    end
  end
end
