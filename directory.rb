require 'date'
months = [
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
month = months[(DateTime.now.strftime("%d/%m/%Y %H:%M").to_s[3..4].to_i) -1]

students = [
     { name: "Dr. Hannibal Lecter", cohort: month},
     { name: "Darth Vader", cohort: :november},
     { name: "Nurse Ratched", cohort: :november},
     { name: "Michael Corleone", cohort: :november},
     { name: "Alex Delarge", cohort: :november},
     { name: "The Wicked Witch of the West", cohort: :november},
     { name: "Terminator", cohort: :november},
     { name: "Freddy Krueger", cohort: :november},
     { name: "The Joker", cohort: :november},
     { name: "Joffrey Baratheon", cohort: :november},
     { name: "Norman Bates",cohort: :november}
    ]

def print_header
  puts "The students of Villains Academy"
  puts "---------"
end

def print(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(students)
  puts "Overall we have #{students.length} brilliant students."
end

print_header
print(students)
print_footer(students)