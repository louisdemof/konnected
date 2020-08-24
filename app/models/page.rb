class Page < ApplicationRecord
  has_many :project_features
  validates :name, :description, presence: true
end
