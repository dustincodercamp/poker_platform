class Exercise < ApplicationRecord
  belongs_to :lesson
  has_many :boards # has_one OR has_many is something logical, the database
                   # is the same for both cases !!! So it depends on the
                   # application you're building
  has_many :players
  has_many :questions
  validates :statement, presence: true
end
