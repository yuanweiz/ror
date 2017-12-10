module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user
        @current_user ||= User.find_by( uid: session[:user_id] )
    end

    def logged_in?
        !current_user.nil?
    end

    def log_out
        @current_user = session[:user_id] = nil
    end
end
