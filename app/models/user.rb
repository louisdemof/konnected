class User < ApplicationRecord
  has_many :solicitations
  has_many :applied_projects, through: :solicitations, source: :project
  has_many :orders
  has_many :projects
  has_many :intermediary_updates, through: :solicitations
  has_many :reviews ,through: :solicitations
  has_one_attached :photo
  has_many :notifications, foreign_key: :recipient_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_create :level_1
  belongs_to :level, optional: :true

  def level_1
    level = Level.first
  end

end
