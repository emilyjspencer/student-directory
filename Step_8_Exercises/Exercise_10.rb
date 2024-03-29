# We've been using the chomp() method to get rid of the last return character
# . Find another method among those provided by the String class that could
# be used for the same purpose (although it will require passing 
# some arguments).

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.strip  # name stored in variable
  while !name.empty? do  # set up while loop
  # while the name is not empty, repeat this code
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.strip
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
  puts "Overall, we have #{students.count} great students"   # have access to the
  # we could also use students.length       # students variable defined at the top 
end 

# Call the methods
students = input_students # the students are the ones that the user entered
print_header
print_names(students) 
print_footer(students)