class Subject < ApplicationRecord
    validates :classname, presence: true
    validates :teacher_id, presence: true

    #lot of classes have one teacher that's we add below line in teacherclass model
    belongs_to :teachers

    #this is for enrollment has many through association
    has_many :enrollments
    has_many :students, through: :enrollments
end