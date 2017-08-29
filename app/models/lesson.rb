class Lesson < ApplicationRecord
  validates :title, presence: true
  validates :order, presence: true
end
