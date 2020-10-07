# code here!
require 'pry'
class School 
    def initialize(name)
        @name = name
        @roster = {}
    end

    def name 
        @name
    end

    def roster 
        @roster
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort 
        sorted = {}
        roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end

end
