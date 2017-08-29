class Quiz < ApplicationRecord
  has_many :quiz_statements, inverse_of: :quiz
  has_many :sections, as: :contentable, inverse_of: :contentable
end
