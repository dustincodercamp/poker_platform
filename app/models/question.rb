class Question < ApplicationRecord
  belongs_to :exercise
  validates :statement, presence: true
  validates :answer, presence: true
end
