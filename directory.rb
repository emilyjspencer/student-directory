@students = [] # an empty array accessible to all methods

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list of students from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items  
end

def interactive_menu
  loop do # set up a loop
    print_menu
    process(STDIN.gets.chomp)
  end 
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  name = STDIN.gets.chomp  # name stored in variable
  while !name.empty? do  # set up while loop
  # while the name is not empty, repeat this code
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
  @students # Print the students array - with their names and cohorts
end

def show_students
  print_header
  print_student_list
  print_footer
end 

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 


def print_student_list # Passing our students variable as students argument because
  @students.each do |student| # methods don't have access to the local variables 
    puts "#{student[:name]} (#{student[:cohort]} cohort)"    # defined outside them  - but we are no longer only passing names
  end
end
                           # renamed argument names to students because we are no longer passing
def print_footer # only names - but the methods still don't
  puts "Overall, we have #{@students.count} great students"   # have access to the
  # we could also use students.length       # students variable defined at the top 
end 


def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")  # this method allows the user to
  file = File.open(filename, "r")  # load data from a file upon startup 
  file.readlines.each do |line|   # It accepts the filename as an argument 
    name, cohort = line.chomp.split(',')  # Without this method - one is unable to type 
    @students << {name: name, cohort: cohort.to_sym}  # ruby directory.rb students csv 
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

try_load_students
interactive_menu



