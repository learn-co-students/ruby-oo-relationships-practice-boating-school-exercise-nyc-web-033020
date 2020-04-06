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

    def pass_student(student, test_name)
        test = BoatingTest.all.find do |test| 
            test.test_name == test_name && test.student == student
        end
        !test ? BoatingTest.new(student, test_name, "passed", self) : test.status = "pass"
    end

    def fail_student(student, test_name)
        test = BoatingTest.all.find do |test|
            test.test_name == test_name && test.student == student
        end
        !test ? BoatingTest.new(student,test_name, "failed", self) : test.status = "fail"
    end

end