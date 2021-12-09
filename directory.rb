students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great student(s)"
end

def input_students
  puts "Please enter the names of the students".center(50, "-")
  puts "To finish, just hit return twice".center(50, "-")
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} student(s)".center(50, "-")
    name = gets.chomp
  end
  students
end

def initial_search(students, letter)
  students.each do |student|
    if student[:name].chr.include?(letter)
      puts student[:name].center(50, "-")
    end
  end
end

def small_names(students)
  students.each do |student|
    if student[:name].chars.count < 12
      puts student[:name].center(20, "-")
    end
  end
end

print(students)
small_names(students)

# Research how the method center() of the String class works. 
# Use it in your code to make the output beautifully aligned.