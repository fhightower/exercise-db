class Exercise < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }

  has_many :links
end
