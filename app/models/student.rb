class Student < ApplicationRecord
    validates :name, presence: true, length: {maximum:50}

    validates_uniqueness_of :name
    #this is for enrollment has many through association
    has_many :enrollments, dependent: :destroy
    has_many :subjects, through: :enrollments

    #one to one relation between attendence and student
    has_one :attendence

    default_scope -> { order(updated_at: :desc)}
end