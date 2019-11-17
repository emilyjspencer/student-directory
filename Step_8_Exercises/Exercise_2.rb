# Modify your program to only print the students whose name begins with a specific letter.

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []       # below prompts the user to enter name 
  name = gets.chomp  # name stored in variable
  while !name.empty? do  # set up while loop
  # while the name is not empty, repeat this code
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  students # Print the students array - with their names and cohorts
end   # NB students is an array of hashes  [ {  }, {   }, {    }] etc 

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
     if student[:name][0] == "e"   # if the first letter of name is 'e', print that student
       puts "#{student[:name]} (#{student[:cohort]} cohort)"  # defined outside them  - but we are no longer only passing names
     end
  end
end
                           # renamed argument names to students because we are no longer passing
# def print_footer(students) # only names - but the methods still don't
  # puts "Overall, we have #{students.count} great students"   # have access to the
  # we could also use students.length       # students variable defined at the top 
# end 

# Call the methods
students = input_students # the students are the ones that the user entered
print_header
print_names(students) 
# print_footer(students)