class QuizStatement < ApplicationRecord
  belongs_to :quiz, inverse_of: :quiz_statements
end
