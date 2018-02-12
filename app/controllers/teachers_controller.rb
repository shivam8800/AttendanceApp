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
            redirect_to teacher_path(@teacher)
        else
            render "new"
        end
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    private
        def teacher_params
            params.require(:teacher).permit(:name,:email,:password,:password_confirmation)
        end
end