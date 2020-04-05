class BoatingTest
  @@all = []

  attr_reader :test_name, :student, :teacher
  attr_accessor :status

  def initialize test_name, student, teacher, status
    @test_name = test_name
    @student = student
    @teacher = teacher
    @status = status
    BoatingTest.all << self
  end

  def self.all
    @@all
  end

end
