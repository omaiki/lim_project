class Url < ApplicationRecord

  def parse_url
    doc = Nokogiri::HTML(open(self.page))
  end


  # parser code will go in this model
end
