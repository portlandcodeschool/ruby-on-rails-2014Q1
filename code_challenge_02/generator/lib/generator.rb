#! /usr/bin/env ruby
require 'faker'
 
  
# I want a certain mix of data. Faker produces a nice random selection of names, but 
# I also want middle names, middle initials, and hyphenated last names some of the time.
# Faker has enough variety of phone numbers
def print_one_line

  middle_initial = (65 + rand(26)).chr

  r=rand
  case 
  when 0 < r && r < 0.5
    print Faker::Name.name
  when 0.5 < r && r < 0.6
    print Faker::Name.prefix, " ", Faker::Name.first_name, " ", Faker::Name.first_name, " "
    print Faker::Name.last_name, "-", Faker::Name.last_name, " ", Faker::Name.suffix
  when 0.6 < r && r < 0.7
    print Faker::Name.prefix, " ", Faker::Name.first_name, " ", middle_initial, ". ", Faker::Name.last_name
  when 0.7 < r && r < 0.8
    print Faker::Name.first_name, " ", middle_initial, ". ", Faker::Name.last_name
  when 0.8 < r && r < 0.9
    print Faker::Name.prefix, " ", Faker::Name.last_name
  else
    print Faker::Name.first_name, " ", middle_initial, ". ", Faker::Name.last_name, " ", Faker::Name.suffix
  end

  print  "\t", Faker::PhoneNumber.phone_number, "\n"
end

# main
5000.times do 
  print_one_line
end 
