class Category < ApplicationRecord
  belongs_to :lesson
  has_many :exercises
end
