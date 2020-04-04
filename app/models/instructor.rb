class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def pass_student(student, test_name)
        test_passed = "passed"
        BoatingTest.all.select do |key|
            if key.student == student && key.test_name == test_name
                key.test_status = test_passed
            else
                BoatingTest.new(student, test_name, test_passed, self)
            end
        end
    end
    def fail_student
        test_failed = "failed"
        BoatingTest.all.select do |key|
            if key.student == student && key.test_name == test_name
                key.test_status = test_failed
            else
                BoatingTest.new(student, test_name, test_failed, self)
            end
        end
    end
end
