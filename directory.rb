# exercise 7-8 missing

class String
  # center50 method for aligning, cuz i'm lazy to always write it
  def c50
    self.center(50, ' ')
  end
end

def input_students
  puts "Please enter the names of the students".c50
  puts "To finish, just hit return twice".c50
  # create an emtpry array
  students = []
  # get the first name
  name = gets[0..-2]
  # get hobbies
  puts "hobbies?".c50
  hobbies = gets[0..-2]
  # get country of birth
  puts "country?".c50
  country = gets[0..-2]
  # get height
  puts "height?".c50
  height = gets[0..-2]
  # get fav team
  puts "favourite sports-team?".c50
  fav_team = gets[0..-2]
  # while the name is not empty, repeat this code
  while !name.empty?
    # add the student hash to the array
    students << {
      name: name, cohort: :november,
      hobbies: hobbies, country: country,
      height: height, fav_team: fav_team
    }
    if students.count == 1
      puts "Now we have #{students.count} student.".c50
    else
      puts "Now we have #{students.count} students.".c50
    end
    # get another name from the user
    puts "new student name?".c50
    name = gets[0..-2]
    if name != ""
      puts "hobbies?".c50
      hobbies = gets[0..-2]
      puts "country?".c50
      country = gets[0..-2]
      puts "height?".c50
      height = gets[0..-2]
      puts "fav sports-team?".c50
      fav_team = gets[0..-2]
    end
  end
  # return the array of students
  students
end

def print_header
  puts "The students of MAcademy".c50
  puts "------------------------".c50
end
def print(students)
  students.each_with_index do |student, index|
    puts "#{index+1}. #{student[:name]} : (#{student[:cohort]} cohort) ".c50
    puts "Hobbies: #{student[:hobbies]}, country of birth: #{student[:country]}".c50
    puts "height: #{student[:height]} \n".c50
  end
end
def print_footer(names)
  if names.count == 1
    puts "Overall, we have an #{names.count} great student".c50
  else
    puts "Overall, we have an #{names.count} great students".c50
  end

end

students = input_students
# nothing happens until we call the methods
if !students.empty?
  print_header
  print(students)
  print_footer(students)
end
