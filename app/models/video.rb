class Video < ApplicationRecord
  has_many :sections, as: :contentable, inverse_of: :contentable
  validates :title, presence: true
  validates :url, presence: true
end
