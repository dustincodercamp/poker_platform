class Content < ApplicationRecord
  has_many :content_items
  has_many :sections, as: :contentable, inverse_of: :contentable
  validates :title, presence: true
end
