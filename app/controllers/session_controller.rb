class SessionController <ApplicationController

  def new
    render text: "Display the log in the form."
  end

  def create
    # render json: params
    # render text: "log #{params[:user][:email]} in with #{params[:user][:password]}."
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      render text: "you're logged in asshat #{@user.email}"
    else
      render text: "The fuck do you want?"
    end

  end

  def destroy
    render text: "Log the user out."
  end

end