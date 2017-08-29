class Content < ApplicationRecord
  has_many :content_items
  has_many :sections, as: :contentable, inverse_of: :contentable
  validates :title, presence: true
  # validates :content_items, presence: true
  # validates :sections, presence: true
end
