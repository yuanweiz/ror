class SessionsController < ApplicationController
  def new
  end
  
  def create
      sparams = session_params
      user = User.find_by( ulogin: sparams[:login])
      passwd = sparams[:password]
      if user && BCrypt::Password.new(user.upassword) == passwd then
          render plain: "ok"
      else 
          render 'login_failed'
      end
  end
  def login_failed
  end

  def session_params
      return params[:session]
  end
end
