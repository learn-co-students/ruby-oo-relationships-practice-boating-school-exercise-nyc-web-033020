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

  def self.find_student(student_name)
    self.all.find { |student| student.first_name == student_name }
  end

  def find_boating_tests
    BoatingTest.all.select { |test| test.student.first_name == self.first_name }
  end

  def grade_percentage
    passed_tests = find_boating_tests.select { |test| test.status == "passed"}
    (passed_tests.count.to_f / find_boating_tests.count * 100).round(2)
  end
  #binding.pry
end


