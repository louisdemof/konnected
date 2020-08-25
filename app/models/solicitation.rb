class Solicitation < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :status, inclusion: {in: ["Pending", "Accepted", "Denied"]}
  validates :user_id, :project_id, presence: true
end
