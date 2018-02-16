class EnrollmentsController < ApplicationController

    def new
        subject = Subject.find(params[:subject_id])
        p subject.name
        @enrollment = subject.enrollments.new
    end

    def create
        @enrollment = Enrollment.new(enrollment_params)
        if @enrollment.save
            flash[:success] = "You have enroll a new student"
            redirect_to subject_path(enrollment_params["subject_id"])
        else
            render "new"
        end
    end

    def destroy
        @enrollment = Enrollment.find(params[:id])
        # debugger
        @enrollment.destroy
        flash[:success] = "You have successfully Unenroll a student"
        redirect_to subject_path(@enrollment.subject_id)
    end

    private
        def enrollment_params
            params.require(:enrollment).permit(:subject_id, :student_id)
        end
end