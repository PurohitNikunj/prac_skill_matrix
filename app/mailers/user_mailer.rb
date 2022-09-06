class UserMailer < ApplicationMailer

  default from: 'user"s email'
  def skill_added
    @user = params[:user]
    mail(to: "team-manager.email", subject: 'Skill Added By "User-name"')
  end

end
