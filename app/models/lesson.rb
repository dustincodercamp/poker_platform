class Lesson < ApplicationRecord
  has_many :sections
  validates :title, presence: true
  validates :order, presence: true
  has_many :exercises
end
