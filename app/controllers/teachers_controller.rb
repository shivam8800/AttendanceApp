class TeachersController < ApplicationController

    # beore_action :set_teacher
    def new
        @teacher = Teacher.new
    end

    def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.save
            flash[:success] = "Welcome #{@teacher.name} to my Attendence app"
            # debugger
            redirect_to login_path
        else
            render "new"
        end
    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update
        @teacher = Teacher.find(params[:id])
        if @teacher.update(teacher_params)
            flash[:success] = "Your account have successfully updated"
            redirect_to teacher_path(@teacher)
        else
            render "edit"
        end
    end
    
    def show
        @teacher = Teacher.find(params[:id])
        @teacher_subjects = @teacher.subjects.paginate(page: params[:page], per_page: 5)
    end

    def destroy
        @teacher = Teacher.find(params[:id])
        @teacher.destroy
        session.delete(:teacher_id)
        flash[:danger] = "your account have  successfully deleted"
        redirect_to signup_path
    end

    private
        def teacher_params
            params.require(:teacher).permit(:name,:email,:password,:password_confirmation)
        end
end