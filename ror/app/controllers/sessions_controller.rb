class SessionsController < ApplicationController
    include SessionsHelper
  def new
  end
  
  def create
      sparams = session_params
      user = User.find_by( ulogin: sparams[:login])
      passwd = sparams[:password]
      if user && BCrypt::Password.new(user.upassword) == passwd then
          log_in user
          #render plain: "ok"
          redirect_to user
      else 
          render 'login_failed'
      end
  end

  def login_failed
  end

  def destroy
      log_out
      redirect_to root_url
  end

  def session_params
      return params[:session]
  end
end
