class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_teacher, :logged_in?

    def current_teacher
      # debugger
      @current_teacher ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]
    end
    
    def logged_in?
      !!current_teacher
    end
    
    def require_user
      if !logged_in?
        flash[:danger] = "You must be logged in to perform that action"
        redirect_to login
      end
    end

end
