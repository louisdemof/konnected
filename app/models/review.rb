class Review < ApplicationRecord
  belongs_to :solicitation
  validates :score, :comment, presence: true
  validates :score, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
end
