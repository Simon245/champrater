class UserNotifier < ActionMailer::Base

  default from: "ChampRater <webmaster@champrater.com>"

  def reset_password(user)
    @user = user
    mail to: @user.email, subject: "[Champ Rater] Reset your credentials"
  end

  def password_was_reset(user)
  end

end