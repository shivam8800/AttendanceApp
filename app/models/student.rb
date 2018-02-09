class Student < ApplicationRecord
    validates :studentname, presence: true, length: {maximum:50}

    #this is for enrollment has many through association
    has_many :enrollments
    has_many :subjects, through: :enrollments
end