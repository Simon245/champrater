class SessionController <ApplicationController

   # skip_before_action :verify_authenticity_token

  def new
    @messages = flash.map {|key, value| "#{key.capitalize}: #{value}"}.join(";")
    # render text: "Display the log in the form."
  end

  def create
    # render json: params
    # render text: "log #{params[:user][:email]} in with #{params[:user][:password]}."
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      # render text: "you're logged in asshat #{@user.email}"
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