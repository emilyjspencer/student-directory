def interactive_menu
  students = []  # set up array to push students to
  loop do # set up a loop
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1" # if the user enters '1' - the students they enter are saved to
      students = input_students 
    when "2"  # if the user enters '2' - everything will be printed
      print_header
      print_names(students)
      print_footer(students)
    when "9"   # if the user enters '9' the program will exit
      exit # this will cause the program to terminate
    else  # if the user enters none of these - the following error is raised 
      puts "I don't know what you meant, try again"
    end
  end
end


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

def print_names(students) # Passing our students variable as students argument because
  students.each do |student| # methods don't have access to the local variables 
    puts "#{student[:name]} (#{student[:cohort]} cohort)"    # defined outside them  - but we are no longer only passing names
  end
end
                           # renamed argument names to students because we are no longer passing
def print_footer(students) # only names - but the methods still don't
  puts "\nOverall, we have #{students.count} great students"   # have access to the
  # we could also use students.length       # students variable defined at the top 
end 

# Call the methods
# students = input_students # the students are the ones that the user entered
interactive_menu
print_header
print_names(students) 
print_footer(students)


