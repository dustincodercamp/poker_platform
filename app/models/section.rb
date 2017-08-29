class Section < ApplicationRecord
  belongs_to :contentable, polymorphic: true
  belongs_to :lesson
end
