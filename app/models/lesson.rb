class Lesson < ApplicationRecord
  validates :title, presence: true
  validates :order, presence: true
  has_many :sections
end
