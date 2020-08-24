class Feature < ApplicationRecord
  validates :name, :description, presence: true
end
