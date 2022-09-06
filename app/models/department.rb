class Department < ApplicationRecord
  has_many :users

  def team_manager
    User.find(team_manager_id)
  end
end
