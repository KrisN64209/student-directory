def input_students
  students = []
  puts "Please enter the details of the students"
  puts "To finish, just hit return twice after completing a students information"
  student_getter = ask_questions()
   while !student_getter[:name].empty? do
    students << student_getter
    puts "Now we have #{students.count} students"
    student_getter = ask_questions()
   end
 students
 end

 def ask_questions
   puts "Please enter the name of the next student"
   name = gets.chomp
   return {name: "", height: "", country_of_birth: "", hobbies: "", cohort: :november} if name.empty?
   puts "Please enter the height of the student"
   height = gets.chomp
   puts "Please enter the student's hobbies"
   hobbies = gets.chomp
   puts "Please enter the student's country of birth"
   country_of_birth = gets.chomp
   student={name: name, height: height, country_of_birth: country_of_birth, hobbies: hobbies, cohort: :november}
   return student
 end


def print_header
  puts "The Students of Villains Academy"
  puts "-----------"
end

def print_using_while(students)
  count=0
  while count<students.length
    puts "#{count+1}.#{students[count][:name]} (#{students[count][:cohort]} cohort)"
    count+=1
  end
end


def print(students)
  students.each.with_index {|student, index|
    if student[:name].length<12
    puts "#{index+1}.#{student[:name]}"
    puts "#{student[:height]}" .center(18)
    puts "#{student[:country_of_birth]}" .center(18)
    puts "#{student[:hobbies]}" .center(18)
    puts "(#{student[:cohort]} cohort)" .center(18)
  end
  }
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
