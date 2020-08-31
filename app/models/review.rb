class Review < ApplicationRecord
  belongs_to :solicitation
  validates :score, :comment, presence: true
end
