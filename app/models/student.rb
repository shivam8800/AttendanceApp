class Student < ApplicationRecord
    validates :name, presence: true, length: {maximum:50}

    #this is for enrollment has many through association
    has_many :enrollments
    has_many :subjects, through: :enrollments

    #one to one relation between attendence and student
    has_one :attendence

    default_scope -> { order(updated_at: :desc)}
end