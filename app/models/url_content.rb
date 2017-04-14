class UrlContent < ApplicationRecord

  belongs_to :url

  validates :tag, presence: true
end
