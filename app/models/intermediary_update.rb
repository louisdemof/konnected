class IntermediaryUpdate < ApplicationRecord
  has_many_attached :documents
  has_many :users, through: :intermediary_updates
  belongs_to :solicitation
  has_many :comments

 
end
