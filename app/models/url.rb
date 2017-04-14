class Url < ApplicationRecord

  has_many :url_contents, dependent: :destroy

  def parse_url
    doc = Nokogiri::HTML(open(self.page))
  end


  # parser code will go in this model
end
