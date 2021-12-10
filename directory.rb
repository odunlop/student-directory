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
  students = {}
  count = 0
  while true 
    puts "What do you want to do in the directory? Add, View or Exit?"
    choice = gets.chomp.downcase

    case choice
    when "add"
      puts "Please enter the name of the student".center(50, "-")
      student_name = gets.chomp
      puts "What's the students cohort?".center(50, "-")
      cohort = gets.chomp
      if students[cohort] == nil
        students[cohort] = []
      end
      students[cohort].push(student_name)
      count += 1
    when "view"
      students.each do |cohort, name|
        puts "#{name.join(", ")} (#{cohort} cohort)"
      end
      puts "Overall, we have #{count} great student(s)".center(50, "-")
    when "exit"
      puts "...Exiting the directory...".center(50, "-")
      break
    end
  end
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

input_students