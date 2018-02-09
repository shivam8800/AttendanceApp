class Report < ApplicationRecord
    validates :subject_id, presence: true
    validates :date, presence: true

    #one to many relationship between report and subject
    belongs_to :subject

    #one to many relationship between report and attendences
    has_many :attendences
end