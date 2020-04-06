class BoatingTest
  
  attr_reader :student, :test, :instructor
  attr_accessor :status

  @@all = []

  def initialize(student, test, status = "pending", instructor)
    @student = student
    @test = test
    @status = status
    @instructor = instructor
    BoatingTest.all << self
  end

  def self.all
    @@all
  end

  def self.find_test(student, test_name)
    self.all.find { |test| test.student == student && test.test == test_name}
  end
end
