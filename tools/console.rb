require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#[instructor]--<-[boating test]->--[student]

tashawn = Instructor.new("Tashawn")
ian = Instructor.new("Ian")
matt = Instructor.new("Matt")

steve = Student.new("Steve")
yo = Student.new("Yo")
edgar = Student.new("Edgar")
michelle = Student.new("Michelle")
mike = Student.new("Mike")

steve.add_boating_test("Parking", "Pass", tashawn)
steve.add_boating_test("Turning", "Pass", ian)
steve.add_boating_test("Signaling", "Fail", matt)
steve.add_boating_test("U-Turn", "Pass", matt)
steve.add_boating_test("Traffic", "Fail", tashawn)
steve.add_boating_test("Braking", "Pass", ian)
 
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

