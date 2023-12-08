class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  broadcasts_refreshes_to :user
end
