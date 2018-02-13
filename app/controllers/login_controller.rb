class LoginController < ApplicationController

    def new

    end
    
    def create
        # debugger        
        teacher = Teacher.find_by(email: params[:session][:email].downcase)
        if teacher && teacher.authenticate(params[:session][:password])
            session[:teacher_id] = teacher.id
            flash[:success] = "You have successfully logged in"
            redirect_to teacher
        else
            flash.now[:danger] = "There was something wrong with your login information"
            render 'new'
        end
    end

    def destroy
        session[:teacher_id] = nil
        flash[:success] = "You have logged out"
        redirect_to login_path
    end
end