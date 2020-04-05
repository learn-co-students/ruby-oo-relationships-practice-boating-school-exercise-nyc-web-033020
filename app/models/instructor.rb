class Instructor
  @@all = []

  attr_reader :name

  def initialize name
    @name = name
    Instructor.all << self
  end

  def self.all
    @@all
  end

  def pass_student test_name, student
      test = BoatingTest.all.find{ |test| test.test_name == test_name && test.student == student }
      !test ? BoatingTest.new(test_name,student,self,'passed') : test.status = 'pass'
  end

  def fail_student test_name, student
      test = BoatingTest.all.find{ |test| test.test_name == test_name && test.student == student }
      !test ? BoatingTest.new(test_name,student,self,'fail') : test.status = 'fail'

  end

end
