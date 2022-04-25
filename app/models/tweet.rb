class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :user, presence: true
  validates :message, presence: true, length: { maximum: 140 }
end
