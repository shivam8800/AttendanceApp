class ReportsController < ApplicationController
    def new
        subject = Subject.find(params[:subject_id])
        @report = subject.reports.new
        students = subject.students
        @attendances = students.map { |id| Attendence.new(student_id: id, report_id: @report.id) }
    end

    def create
        # @report = Report.new(report_params)
        # @attendence = Attendence.new(attendence_params)
        debugger
        p "dsfsdf",params
        # redirect_to subject_path(@report.subject_id)
    end

    private
        # def report_params
        #     params.require(:report).permit(:date, :subject_id)
        # end

        # def attendence_params
        #     params.require(:report).permit(:student_id, :present)
        # end
end
