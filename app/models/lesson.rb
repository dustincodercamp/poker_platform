class Lesson < ApplicationRecord
  has_many :categories, dependent: :destroy
end
