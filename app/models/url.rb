class Url < ApplicationRecord

  has_many :url_contents, dependent: :destroy

  after_create :parse_url

   def parse_url

  end


  # parser code will go in this model
end
