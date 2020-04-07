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

    def boating_tests
        BoatingTest.all.select { |tests| tests.student == self }
    end

    def self.find_student(first_name)
        self.all.find { |student| student.first_name == first_name }
    end


    #* `Student#grade_percentage` should return the percentage of tests
    #   that the student has passed, a Float (so if a student has passed 
    #   3 / 9 tests that they've taken, this method should return the Float `33.33`)

    #return percentage (boating_tests.test_status/boating_tests.count).to_f
    def grade_percentage
        passed_tests = boating_tests.select { |tests| tests.test_status == "Pass" }
        (passed_tests.count.to_f / boating_tests.count.to_f) * 100
    end

end
 