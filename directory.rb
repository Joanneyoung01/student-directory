student_count = 11
students = [
  "Dr. Hannibal Lecter"
  "Darth Vader"
  "Nurse Ratched"
  "Michael Corleone"
  "Alex Delarge"
  "The Wicked Witch of the West"
  "Terminator"
  "Freddie Kruger"
  "The Joker"
  "Joffery Baratheon"
  "Norman Bates"
]
#print the list of student names
"The students of Villains Academy"
"-------------------"
students.each do |student|
  puts student
end
#finally, we print the total number of students
print "Overall, we have #{students.count} great students"