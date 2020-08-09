class ProjectInterest < ApplicationRecord
  belongs_to :project
  belongs_to :user
  STATE = %w[confirmada pendiente cancelada]
end
