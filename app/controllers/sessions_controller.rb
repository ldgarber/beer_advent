class SessionsController <  ApplicationController 

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && user.admin?
      render "dashboard#index"    
    else
      flash[:error] = "Can't log in"
      render "new"
    end
  end

  def destroy
    session.clear
  end
end
