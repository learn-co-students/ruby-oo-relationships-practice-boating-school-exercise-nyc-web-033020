class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end
    
    def add_boating_test(student, test_name, test_status)
        BoatingTest.new(student, test_name, test_status, self)
    end

    def boating_tests
        BoatingTest.all.select { |tests| tests.instructor == self }
    end
    
    def pass_student(student, test_name)
        if boating_tests
            test_to_change = boating_tests.find { |tests| tests.test_name }
            test_to_change.test_status = "Pass"
        else
            add_boating_test(student, test_name, "Pass")
        end
    end

    def fail_student(student, test_name)
        if boating_tests
            test_to_change = boating_tests.find { |tests| tests.test_name }
            test_to_change.test_status = "Fail"
        else
            add_boating_test(student, test_name, "Fail")
        end
    end


end
 