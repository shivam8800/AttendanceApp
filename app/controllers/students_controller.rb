class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            flash[:success] = "A new student have successfully created"
            redirect_to student_path(@student)
        else
            render "new"
        end
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            flash[:success] = "Student have updated successfully"
            redirect_to student_path(@student)
        else
            render "edit"
        end
    end

    def destroy
        Student.find(params[:id]).destroy
        flash[:success] = "student deleted successfully"
        redirect_to students_path
    end

    private
        def student_params
            params.require(:student).permit(:name)
        end

end