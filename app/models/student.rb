class Student
  @@all = []

  attr_reader :first_name

  def initialize first_name
    @first_name = first_name
    Student.all << self
  end

  def self.all 
    @@all
  end

  def self.find_student name
    Student.all.find{ |student| student.name == name }
  end

  def tests
    BoatingTest.all.select{ |test| test.student == self }
  end

  def add_boating_test test_name, status, teacher
    BoatingTest.new(test_name,self,teacher,status)
  end

  def grade_percentage
    (BoatingTest.all.select{ |test| test.status == 'passed' }.length.to_f / tests.length.to_f)*100

  end

end
