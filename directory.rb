def input_students
  puts "Please enter the names of the students".center(50, ' ')
  puts "To finish, just hit return twice".center(50, ' ')
  # create an emtpry array
  students = []
  # get the first name
  name = gets.chomp
  # get hobbies
  puts "hobbies?".center(50, ' ')
  hobbies = gets.chomp
  # get country of birth
  puts "country?".center(50, ' ')
  country = gets.chomp
  # get height
  puts "height?".center(50, ' ')
  height = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {
      name: name, cohort: :november,
      hobbies: hobbies, country: country,
      height: height
    }
    puts "Now we have #{students.count} students".center(50, ' ')
    # get another name from the user
    puts "new student name?".center(50, ' ')
    name = gets.chomp
    if name != ""
      puts "hobbies?".center(50, ' ')
      hobbies = gets.chomp
      puts "country?".center(50, ' ')
      country = gets.chomp
      puts "height?".center(50, ' ')
      height = gets.chomp
    end
  end
  # return the array of students
  students
end

def print_header
  puts "The students of MAcademy".center(50, ' ')
  puts "------------------------".center(50, ' ')
end
def print(students)
  students.each_with_index do |student, index|
    puts "#{index+1}. #{student[:name]} : (#{student[:cohort]} cohort) ".center(50, ' ')
    puts "Hobbies: #{student[:hobbies]}, country of birth: #{student[:country]}".center(50, ' ')
    puts "height: #{student[:height]} \n".center(50, ' ')
  end
end
def print_footer(names)
  puts "Overall, we have an #{names.count} great students".center(50, ' ')
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
