require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

puff = Instructor.new("Mrs. Puff")
sandy = Instructor.new("Sandy Cheecks")

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

april = BoatingTest.new(spongebob, "April", "passed", puff)
may = BoatingTest.new(patrick, "May", "failed", sandy)
june = BoatingTest.new(spongebob, "June", "passed", sandy)
july = BoatingTest.new(spongebob, "July", "passed", puff)
august = BoatingTest.new(spongebob, "August", "failed", puff)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

