students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# Define the methods
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end 

def print_names(names) # Passing our students variable as names argument because
  students.each do |student| # methods don't have access to the local variables 
    puts student     # defined outside them 
  end
end

def print_footer(names) # passing in this argument names because the methods don't 
  puts "Overall, we have #{students.count} great students"   # have access to the
  # we could also use students.length       # students variable defined at the top 
end 

# Call the methods
print_header
print_names
print_footer(students)