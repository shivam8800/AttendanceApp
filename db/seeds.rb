# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 3 teacher
# 2 subjects
# 10 student
# 10 enrollment
# 5 reports
# 5 attendences

#ADDING 3 TEACHERS IN DATABASE
def creating_teachers
    Teacher.create!([{
        name: "Yogesh",
        email: "yogesh1@gmail.com"
    },
    {
        name: "Rohan",
        email: "rohan1@gmail.com"
    },
    {
        name: "Narender",
        email: "narender1@gmail.com"
    }])
end
#calling a function
creating_teachers
p "Created #{Teacher.count} teacher"
#---------------------------------------------------------------------------------
#ADDING 2 SUBJECTS IN DATABASE
def create_subjects
    Subject.create!([{
        name: "History",
        teacher_id:1 
    },
    {
        name: "Math",
        teacher_id: 2
    },
    {
        name: "Economics",
        teacher_id: 3
    }])
end

create_subjects
p "Created #{Subject.count} subjects"
# #---------------------------------------------------------------------------------------
# #ADDING 10 STUDENTS IN DATABASE
def create_students
    Student.create!([{
        name: "Rahul"
    },
    {
        name: "Monu"
    },
    {
        name: "Nitin"
    },
    {
        name: "Sahil"
    },
    {
        name: "Kirti"
    },
    {
        name: "Preet"
    },
    {
        name: "Divya"
    },
    {
        name: "Manoj"
    },
    {
        name: "Deepanshu"
    },
    {
        name: "Aslam"
    },
    {
        name: "Rishab"
    }])
end

create_students
p "Created #{Student.count} students"
#---------------------------------------------------------------------------------------
#ENROLL 10 STUDENTS IN DIFFRENT DIFFRENT SUBJECTS
def create_enrollment
    Enrollment.create!([{
        subject_id: 1,
        student_id: 1
    },
    {
        subject_id: 2,
        student_id: 2
    },
    {
        subject_id: 3,
        student_id: 3
    },
    {
        subject_id: 1,
        student_id: 4
    },
    {
        subject_id: 2,
        student_id: 5
    },
    {
        subject_id: 3,
        student_id: 6
    },
    {
        subject_id: 1,
        student_id: 7
    },
    {
        subject_id: 2,
        student_id: 8
    },
    {
        subject_id: 3,
        student_id: 9
    },
    {
        subject_id: 1,
        student_id: 10
    }])
end

create_enrollment
p "Created #{Enrollment.count} Enrollments"
#---------------------------------------------------------------------------------
#ADDING 5 REPORTS IN DATABASE
def create_reports
    Report.create!([{
        date: Date.new(2016,11,23),
        subject_id: 1
    },
    {
        date: Date.new(2016,11,20),
        subject_id: 2
    },
    {
        date: Date.new(2016,11,24),
        subject_id: 1
    },
    {
        date: Date.new(2016,11,20),
        subject_id: 3
    },
    {
        date: Date.new(2016,11,25),
        subject_id: 1
    }])
end

create_reports
p "Created #{Report.count} Reports"

#---------------------------------------------------------------------------------
#ADDING 5 ATTENDENCE IN DATABASE
def create_attendence
    Attendence.create!([{
        report_id: 1,
        student_id: 1,
        present: true
    },
    {
        report_id: 1,
        student_id: 3,
        present: false
    },
    {
        report_id: 1,
        student_id: 4,
        present: true
    },
    {
        report_id: 1,
        student_id: 5,
        present: false
    }])
end

create_attendence
p "Created #{Attendence.count} Attendence"
