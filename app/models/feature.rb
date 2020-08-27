class Feature < ApplicationRecord
  has_many :project_features
  has_many :projects, through: :project_features
  validates :name, :description, presence: true
  monetize :amount_cents
end
