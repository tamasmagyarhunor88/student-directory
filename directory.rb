def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an emtpry array
  students = []
  # get the first name
  name = gets.chomp
  # get hobbies
  puts "hobbies?"
  hobbies = gets.chomp
  # get country of birth
  puts "country?"
  country = gets.chomp
  # get height
  puts "height?"
  height = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {
      name: name, cohort: :november,
      hobbies: hobbies, country: country,
      height: height
    }
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "new student name?"
    name = gets.chomp
    if name != ""
      puts "hobbies?"
      hobbies = gets.chomp
      puts "country?"
      country = gets.chomp
      puts "height?"
      height = gets.chomp
    end
  end
  # return the array of students
  students
end

def print_header
  puts "The students of MAcademy"
  puts "------------------------"
end
def print(students)
  students.each_with_index do |student, index|
    puts "#{index+1}. #{student[:name]} : (#{student[:cohort]} cohort) ,hobbies: #{student[:hobbies]}, country of birth: #{student[:country]}, height: #{student[:height]} \n"
  end
end
def print_footer(names)
  puts "Overall, we have an #{names.count} great students"
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
