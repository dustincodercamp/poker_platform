class Video < ApplicationRecord
  has_many :sections, as: :contentable
end
