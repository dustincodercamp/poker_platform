class Quiz < ApplicationRecord
  has_many :quiz_statements
  has_many :sections, as: :contentable
end
