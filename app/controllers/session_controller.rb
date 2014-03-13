class SessionController <ApplicationController

  def new
    render text: "Display the log in the form."
  end

  def create
    # render json: params
    # render text: "log #{params[:user][:email]} in with #{params[:user][:password]}."
    # render text: "Log in the user in."
    render text: User.authenticate(params[:user][:email], params[:user][:password])
  end

  def destroy
    render text: "Log the user out."
  end

end