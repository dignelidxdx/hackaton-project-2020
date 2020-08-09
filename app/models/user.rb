class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :projects
  has_many :project_interests

  def dev_interests
    dev_int = []
    projects.each do |project|
      dev_int << project.project_interests
    end
    dev_int.flatten
  end

  def full_name
    first_name + last_name
  end
end
