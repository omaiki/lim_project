class UrlContent < ApplicationRecord

  belongs_to :url

  validates :tag, presence: true
  validates :url_id, presence: true
end
