class Lesson < ApplicationRecord
  has_many :sections
  validates :title, presence: true
  validates :order, presence: true
end
