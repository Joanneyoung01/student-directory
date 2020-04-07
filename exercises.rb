def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "what's their superpower"
  superpower = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    students << {name: name, superpower: superpower, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print(students)
  students.each_with_index do |student, index|
    if student[:name].chr === "J" && student[:name].length < 12
      puts "#{index}. #{student[:name]}, their superpower is #{student[:superpower]} (#{student[:cohort]} cohort)"
    end
  end
  students
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#nothing happens untill we call the methods
students = input_students
print_header
print(students)
print_footer(students)