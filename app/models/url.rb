class Url < ApplicationRecord

  has_many :url_contents
  validates :page_url, presence: true

  after_create :parse_url

  require 'nokogiri'
  require 'open-uri'

   def parse_url
    doc = Nokogiri::HTML(open(self.page_url))
    doc.css('a').each do |link|
      self.url_contents.create(tag: 'a', content: link.content)
    end

    doc.css('h1').each do |heading|
      self.url_contents.create(tag: 'h1', content: heading.content)
    end

    doc.css('h2').each do |heading|
      self.url_contents.create(tag: 'h2', content: heading.content)
    end

    doc.css('h3').each do |heading|
      self.url_contents.create(tag: 'h3', content: heading.content)
    end

  end
end
