# In the input_students method the cohort value is hard-coded. How can you 
# ask for both the name and the cohort? What if one of the values is empty?
# Can you supply a default value? The input will be given to you as a string?
# How will you convert it to a symbol? What if the user makes a typo?


def input_students
  puts "Please enter the name and cohort of each student"
  puts "To finish, just hit return twice"
  name = gets.chomp
  # create an empty array
  students = []
  # cohort defaults to July is user doesn't enter a month 
 
  # while the name is not empty, repeat this code
  while !name.empty?  do # As long as the user enters input
    puts "Please enter the student's cohort" 
    cohort = gets.chomp
    cohort = "march" if cohort == ""
    puts "Please enter a valid month" if cohort != /"january|January|february|February|
    March|march|April|april|May|may|June|june|July|july|August|august|September|september|October|
    october|November|november|December|december"/
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym}
    if students.count == 1
      puts "Now we have #{students.count} student"
      puts "Please enter the name of the student"
      puts "To finish, just hit return twice"
    elsif students.count > 1
      puts "Now we have #{students.count} students"
      puts "Please enter the name of the student"
      puts "To finish, just hit return twice"
    end
    # get another name from the user
    name = gets.chomp 
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each { |student|
      puts "#{student[:name].capitalize} is in the #{student[:cohort].capitalize} cohort" } 
end

def print_footer(students)
  if students.count == 1
    puts "We have #{students.count} student!"
  elsif students.count > 1
    puts "Overall, we have #{students.count} great students"
  else
  end
end

students = input_students
# Call the methods 
print_header
print(students)
print_footer(students) 