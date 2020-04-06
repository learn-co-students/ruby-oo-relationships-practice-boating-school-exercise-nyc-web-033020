class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        Student.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(student_string)
        # student_object = 0

        # Student.all.each do |student|
        #     if student.first_name == student_string
        #         student_object = student
        #     end
        # end
        # student_object
        # end

        Student.all.find {|student| student.first_name == student_string}
    end

    def grade_percentage

    end
end


# Student class:

# Student#grade_percentage should return the percentage of tests that the 
#   student has passed, a Float (so if a student has passed 3 / 9 tests 
#   that they've taken, this method should return the Float 33.33)