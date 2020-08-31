class Solicitation < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :reviews
  has_many :intermediary_updates
  validates :status, inclusion: {in: ["Pending", "Accepted", "Denied"]}
  validates :user_id, :project_id, presence: true
end
