# Right now if we have only one student, the user will see a message 
# "Now we have 1 students", whereas it should be "Now we have 1 student".
# How can you fix it so that it used singular form when appropriate 
# and plural form otherwise?

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp  # name stored in variable
  while !name.empty? do  # set up while loop
  # while the name is not empty, repeat this code
    # add the student hash to the array
    students << {name: name, cohort: :november}
    if students.length == 1
      puts "Now we have #{students.length} student"
      puts "Please enter the name of the student"
      puts "To finish, just hit return twice"
    elsif students.length > 1
      puts "Now we have #{students.length} students"
      puts "Please enter the name of the student"
      puts "To finish, just hit return twice"
    end
    # get another name from the user
    name = gets.chomp
  end
  students # Print the students array - with their names and cohorts
end

# The above method will keep prompting the user to enter another name
# until they type nothing - simply pressing the enter button
# The total number of students will then be printed 

# Define the methods
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print_names(students) # Passing our students variable as students argument because
  students.each do |student| # methods don't have access to the local variables 
    puts "#{student[:name]} (#{student[:cohort]} cohort)"    # defined outside them  - but we are no longer only passing names
  end
end
                           # renamed argument names to students because we are no longer passing
def print_footer(students) # only names - but the methods still don't
  if students.length == 1
      puts "We have #{students.length} student"
  else
    puts "Overall, we have #{students.count} great students"   # have access to the
  # we could also use students.length       # students variable defined at the top
  end 
end 

# Call the methods
students = input_students # the students are the ones that the user entered
print_header
print_names(students) 
print_footer(students)