def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an emtpry array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of MAcademy"
  puts "------------------------"
end
def print(students)
  puts "choose students by letter"
  choose_letter = gets.chomp.upcase
  counter = 0
  students.each do |student|
    if student[:name][0] == choose_letter
      counter += 1
      puts "#{counter}. #{student[:name]}: (#{student[:cohort]} cohort)"
    elsif choose_letter == ""
      counter += 1
      puts "#{counter}. #{student[:name]}: (#{student[:cohort]} cohort)"
    end
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
