class Feature < ApplicationRecord
  has_many :project_features
  validates :name, :description, presence: true
end
