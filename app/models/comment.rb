class Comment < ApplicationRecord
  belongs_to :intermediary_update
  belongs_to :user
end
