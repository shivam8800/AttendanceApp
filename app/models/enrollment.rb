class Enrollment < ApplicationRecord
    validates :subject_id, presence: true
    validates :student_id, presence: true

    #this is for enrollment has many through association
    belongs_to :students
    belongs_to :subjects
end