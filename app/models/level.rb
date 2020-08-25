class Level < ApplicationRecord
  #def self.level_1
    #@level = Level.find_by(name: "Level 1")
  #end
  has_many :users
end
