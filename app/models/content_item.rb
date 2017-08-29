class ContentItem < ApplicationRecord
  belongs_to :content
  validates :statement, presence: true
  validates :order, presence: true
  validates :content, presence: true
end
