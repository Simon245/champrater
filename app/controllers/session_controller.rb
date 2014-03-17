class SessionController <ApplicationController

   # skip_before_action :verify_authenticity_token

  def new
    @messages = flash.map {|key, value| "#{key.capitalize}: #{value}"}.join(";")
    # render text: "Display the log in the form."
    redirect_to root_url, notice: "You are logged in." if current_user
  end

  def create
    # @user = User.authenticate(params[:user][:email], params[:user][:password])
    user = User.find_by(email:params[:user][:email])
    password = params[:user][:password]

    if password.blank?
      user.set_password_reset if user
      flash.now[:notice] = "We'll send you and email"
      render :new
    elsif user and user.authenticate(password)
      session[:user_id] = @user.id
      redirect_to root_url
    else
      flash.now[:alert] = "Unable to log you in. Please check your email and password and try again"
      render :new
    end

  end

  def destroy
    session[:user_id] = nil
    # render text: "Log the user out."
    redirect_to login_url, notice: "you've successfully logged out."
  end

end