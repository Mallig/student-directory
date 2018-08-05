require 'date'
$months = [
  :January,
  :February,
  :March,
  :Arpil,
  :May,
  :June,
  :July,
  :August,
  :September,
  :October,
  :November,
  :December
]
$month = $months[(DateTime.now.strftime("%d/%m/%Y %H:%M").to_s[3..4].to_i) -1]

students = [
     { name: "Dr. Hannibal Lecter", cohort: $month, hobbies: ["swimming", "fishing", "hiking", "trampolining"], height: 6, born: "Hungry"},
     { name: "Darth Vader", cohort: $month, hobbies: ["swimming", "fishing", "hiking", "trampolining"], height: 6, born: "Hungary"},
     { name: "Nurse Ratched", cohort: :november, hobbies: ["swimming", "fishing", "hiking", "driving"], height: 6, born: "Hungary"},
     { name: "Michael Corleone", cohort: :november, hobbies: ["swimming", "fishing", "hiking", "driving"], height: 6, born: "Hungary"},
     { name: "Alex Delarge", cohort: :november, hobbies: ["swimming", "fishing", "hiking", "driving"], height: 6, born: "Hungary"},
     { name: "The Wicked Witch of the West", cohort: :november, hobbies: ["swimming", "fishing", "hiking", "gaming", "hunting"], height: 6, born: "Hungary"},
     { name: "Terminator", cohort: :november, hobbies: ["swimming", "fishing", "gaming", "hunting"], height: 6, born: "Hungary"},
     { name: "Freddy Krueger", cohort: :november, hobbies: ["swimming", "fishing", "gaming", "hunting"], height: 6, born: "Hungary"},
     { name: "The Joker", cohort: :november, hobbies: ["swimming", "fishing", "gaming"], height: 6, born: "Hungary"},
     { name: "Joffrey Baratheon", cohort: :november, hobbies: ["swimming", "fishing", "gaming"], height: 6, born: "Hungary"},
     { name: "Norman Bates",cohort: :november, hobbies: ["swimming", "fishing", "hiking", "gaming", "hunting"], height: 5, born: "Slovakia"}
    ]

def print_header
  puts "The students of Villains Academy"
  puts "---------"
end

def print(students)
  students.each_with_index do |student, index| 
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort, #{student[:born]}) " 
  end
end

def print_footer(students)
  puts "Overall we have #{students.length} brilliant students."
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: $month}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students
end

def name_starts_with(students, letter)
  students.each { |student| puts student[:name] if student[:name][0] == letter}
end

def shorter_than(students, length)
  students.each { |student| puts student[:name] if student[:name].length <= length}
end

def puts_hobbies(students)
  students.each {|student| puts "#{student[:name]}, hobbies include: #{student[:hobbies]}"}
end

def hobby_list(students)
  hobbies = []
  students.each {|student| hobbies = hobbies + student[:hobbies]}
  hobbies = hobbies.uniq
  puts "The students enjoy such activities as:"
  puts hobbies
end

def student_enjoys?(students)
  puts "Enter a hobby #{hobby_list(students)}"
  hobby = gets.chomp
  students.each {|student| puts "#{student} enjoys #{hobby}!" if student[:hobbies].include?(hobby)}
end

#students = input_students

#print_header
print(students)
#print_footer(students)
#name_starts_with(students, "D")
#name_starts_with(students, "T")
#name_starts_with(students, "N")
#shorter_than(students, 15)
#puts_hobbies(students)
#hobby_list(students)