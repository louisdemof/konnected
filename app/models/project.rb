class Project < ApplicationRecord
  has_many :solicitations
  has_many :project_features
  has_many :features, through: :project_features
  has_many :project_pages
  belongs_to :user
  belongs_to :level
  validates :name, presence: true
  validates :deadline, presence: true
  has_many_attached :attachments
  has_many_attached :intermediary_attachments


  def project_difficulty
    @difficulty_sum = 0
    unless self.features.empty?
      self.features.each do |feature|
        @difficulty_sum += feature.difficulty
      end
    end
    @difficulty_sum
  end

  def project_level
    sum = self.project_difficulty
    case sum
    when 0..2
      self.level = Level.find_by(name: "Level 1")
    when 3..4
      self.level = Level.find_by(name: "Level 2")
    when 5..7
      self.level = Level.find_by(name: "Level 3")
    when 8..9
      self.level = Level.find_by(name: "Level 4")
    when sum >= 10
      self.level = Level.find_by(name: "Level 5")
    end
    self.save
  end
end
