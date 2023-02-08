class Link < ApplicationRecord
  validates :url, presence: true, length: { minimum: 10 }
end
