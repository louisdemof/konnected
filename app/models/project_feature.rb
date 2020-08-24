class ProjectFeature < ApplicationRecord
  belongs_to :project
  belongs_to :feature

  validates: :project_id, :pages_id, presence: true
end
