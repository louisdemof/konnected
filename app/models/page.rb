class Page < ApplicationRecord
  has_many :project_pages
  validates :name, :description, presence: true
  monetize :amount_cents
end
