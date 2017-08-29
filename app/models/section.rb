class Section < ApplicationRecord
  belongs_to :contentable, polymorphic: true, inverse_of: :sections
  belongs_to :lesson

  delegate :title, to: :contentable, prefix: true

  def title
    "#{contentable_type} - #{contentable_id} - #{contentable_title}"
  end
end
