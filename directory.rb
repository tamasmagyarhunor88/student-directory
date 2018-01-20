# let's put all students into an array
students = [
"Dr. Hannibal Lecter",
"Darth Veder",
"Nurse Rached",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Normal Bates"
]
def print_header
  puts "The students of MAcademy"
  puts "------------------------"
end
def print(names)
  names.each do |name|
    puts name
  end
end
def print_footer(names)
  puts "Overall, we have an #{names.count} great students"
end
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
