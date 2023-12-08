class Task < ApplicationRecord
  belongs_to :project
  has_one :user, through: :project

  broadcasts_refreshes_to :user
end
