class IntermediaryUpdate < ApplicationRecord
  has_many_attached :documents
  belongs_to :solicitation
  has_many :comments
end
