class ReportsController < ApplicationController
    def new
        subject = Subject.find(params[:subject_id])
        @report = subject.reports.new
        students = subject.students
        @attendences = students.map { |student| Attendence.new(student: student) }
    end

    def create
        reports_params = params.require(:report).permit(:date, :subject_id)
        @report = Report.new(reports_params)
        if @report.save
            attendences_params["attendences_attributes"].each do |attendence, value|
                @attendence = Attendence.new()
                @attendence.student_id = value["student_id"]
                @attendence.present = true if value['present'] == "1"
                @attendence.report = @report
                if @attendence.save
                end
            end
            redirect_to report_path(@report)
        else 
            render "new"
        end
    end

    def show
        @report = Report.find(params[:id])
        @attendences = @report.attendences
    end

    private
        # def reports_params
        #     params.require(:report).permit(:date, :subject_id)
        # end

        def attendences_params
            params.require(:report).permit(attendences_attributes: [:student_id, :present])
        end
end
