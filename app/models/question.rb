class Question < ApplicationRecord
  belongs_to :exercise
  has_many :answer_options
  validates :statement, presence: true
  validates :answer, presence: true
end
