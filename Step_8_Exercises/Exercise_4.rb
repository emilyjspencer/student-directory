# Rewrite the each() method that prints all students using while or until control flow
# methods (Loops).

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
    puts "Now we have #{students.count} students"
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

#def print_names(students) # Passing our students variable as students argument because
  #students.each do |student| # methods don't have access to the local variables 
    #puts "#{student[:name]} (#{student[:cohort]} cohort)"    # defined outside them  
 # end       # - but we are no longer only passing names
#end 


def print_names(students)
  count = 0
  until students.count == count do
    puts "#{count + 1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)" 
    count += 1
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