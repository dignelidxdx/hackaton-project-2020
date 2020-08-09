class Project < ApplicationRecord
  belongs_to :user
  has_many :project_interests
  has_many_attached :photos
end
