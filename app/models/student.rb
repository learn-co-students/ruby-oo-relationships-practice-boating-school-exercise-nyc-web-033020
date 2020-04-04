require 'pry'
class Student
    attr_reader :name
    @@all = []
    def initialize (name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end
    def find_student(name)
        Student.all.select {|key| key.name == name}
    end
    def grade_percentage
        passed_test = []
        BoatingTest.all.select do |key| 
            if key.test_status == "passed" && key.student == self
                passed_test << key
            end
        end
        all_test = BoatingTest.all.select {|key| key.student == self}
        percentage = (passed_test.count * 1.0) / (all_test.count * 1.0)
    end
end
