# require 'yaml'

# filename = 'birthday.txt'
#
# File.open filename, 'w' do |f|
#   f.write test_string
# end
#
# read_string = File.read filename
#
# puts(read_string == test_string)

# load in birthdays.txt file
birthdays = {}
File.read('birthdays.txt').each_line do |line|
    line = line.chomp
    # find the index of the first comma, to establish where the name ends
    first_comma = 0
    while line[first_comma] != ',' && first_comma < line.length
      first_comma += 1
    end

    name = line[0..(first_comma -1)]
    date = line[-12..-1]

    birthdays[name] = date
end

# Ask user whose birthday they want to know

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birthdays[name]

if date == nil
  puts "we don't have a record of that person"
else
  puts date[1..5]
end
