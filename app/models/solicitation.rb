class Solicitation < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one :review
  has_many :intermediary_updates
  validates :status, inclusion: {in: ["Pending", "Accepted", "Denied"]}
  validates :user_id, :project_id, presence: true
end
