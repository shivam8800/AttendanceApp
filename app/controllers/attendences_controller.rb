class AttendencesController < ApplicationController
    def new
        @attendence = Attendence.new
    end

    def create
        @attendence = Attendence.new(attendence_params)
        @attendence.present = true if attendence_params['present'] == "1"
        if @attendence.save
            flash[:success] = "you have successfully take attendence"
        end
        render "new"
    end


    private
        def attendence_params
            params.require(:attendence).permit(:report_id, :student_id, :present)
        end
end