class UrlContentsController < ApplicationController

  has_many :url_contents, dependent: :destroy

  # parser code will go in this model
end
