class Project < ApplicationRecord
  has_many :solicitations
  has_many :project_features
  belongs_to :user
  belongs_to :level
  validates :name, presence: true
  validates :deadline, presence: true
  has_many_attached :attachments
  has_many_attached :intermediary_attachments
end
