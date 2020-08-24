class Project < ApplicationRecord
  has_many :solicitations
  belongs_to :user
  belongs_to :level
end
