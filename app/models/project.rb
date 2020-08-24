class Project < ApplicationRecord
  has_many :solicitations
  has_many :project_features
  has_many :project_pages
  belongs_to :user
  belongs_to :level
  validates :name, presence: true
  validates :deadline, presence: true
end
