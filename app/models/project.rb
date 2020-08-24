class Project < ApplicationRecord
  belongs_to :user
  belongs_to :level
  validates :name, presence: true
  validates :deadline, presence: true
end
