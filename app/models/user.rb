class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :skills, through: :user_skills
  has_many :user_skills
  belongs_to :department
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def team_manager
    department.team_manager
  end
end
