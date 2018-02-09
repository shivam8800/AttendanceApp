class Attendence < ApplicationRecord
    validates :report_id, presence: true
    validates :student_id, presence: true

    #one to many relationship between report and attendences
    belongs_to :report

    #one to one relation between attendence and student
    belongs_to :student
end