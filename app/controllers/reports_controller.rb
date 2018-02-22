class ReportsController < ApplicationController
    def new
        subject = Subject.find(params[:subject_id])
        @report = subject.reports.new
        students = subject.students
        @attendences = students.map { |student| Attendence.new(student: student) }
    end

    def create
        day, month, year = params["report"]["date(3i)"].to_i, params["report"]["date(2i)"].to_i, params["report"]["date(1i)"].to_i
        date = Date.new(year,month,day)
        subject_id = params["report"]["subject_id"].to_i

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
            redirect_to subject_path(@report.subject_id)            
        else 
            render "new"
        end
    end

    private
        def reports_params
            params.require(:report).permit(:date, :subject_id)
        end

        def attendences_params
            params.require(:report).permit(attendences_attributes: [:student_id, :present])
        end
end
