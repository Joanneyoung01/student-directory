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
  puts "What is the cohort"
  cohort = gets.chomp

  #while the name is not empty, repeat this code
  while !name.empty? do
    students << {name: name, superpower: superpower, cohort: cohort.to_sym}
    if students.count <= 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    #get another name from the user
    puts "What's the name of the next student?"
    name = gets.chomp
    puts "and their superpower"
    superpower = gets.chomp
    puts "what cohort?"
    cohort = gets.chomp
  end
  #return the array of students
  students
end

def print(students)
      
  puts "What cohort would you like to see:"
  cohort_choice = gets.chomp

  students.each_with_index do |student, index|

    if student[:cohort] == cohort_choice.to_sym
      puts "#{index+1}. #{student[:name]}, their superpower is #{student[:superpower]} (#{student[:cohort]} cohort)"
    end
  end
  students
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(5)
end
#nothing happens untill we call the methods
students = input_students
print_header
print(students)
print_footer(students)

