class Subject < ApplicationRecord
    validates :name, presence: true
    validates :teacher_id, presence: true

    #lot of classes have one teacher that's we add below line in teacherclass model
    belongs_to :teacher

    #this is for enrollment has many through association
    has_many :enrollments, dependent: :destroy
    has_many :students, through: :enrollments

    #one to many relationship between report table and subject table
    has_many :reports, dependent: :destroy

    default_scope -> { order(updated_at: :desc)}
end