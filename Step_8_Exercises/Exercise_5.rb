# Our code only works with the student name and cohort. Add more information: hobbies, 
# country of birth, height, etc.

def input_students
  puts "Please enter the names, hobbies, country of birth and height of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp  # name stored in variable
  hobbies = gets.chomp
  country = gets.chomp
  height = gets.chomp
  while !name.empty? do  # set up while loop
  # while the name is not empty, repeat this code
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: hobbies, country: country, 
        height: height
    }
    # name is the key and the second name is the variable to which the user's 
    # input is saved 
    # cohort is a key and :november is a value - but it is hardcoded - not interactive 
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    hobbies = gets.chomp
    country = gets.chomp
    height = gets.chomp
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
    puts "#{student[:name]} (#{student[:cohort]} cohort) enjoys: #{student[:hobbies]}, was born 
    in: #{student[:country]} and is #{student[:height]} in height "    
    # defined outside them  - but we are no longer only passing names
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