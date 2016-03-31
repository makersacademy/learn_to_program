require 'time'
# your code here

#store the date and name in a hash
name_bday = File.read 'birthday.txt'

name_bday_hash = {}

name_bday.split("\n").each do |line|
  #each line is separated in the for like [Name, month date, year]
  split_line = line.split(",").map(&:strip)
  name_bday_hash[split_line[0]] = split_line[1] + ", " + split_line[2]
end

#Ask you to put in a name
puts "Please put in a name!"

name = gets.chomp

unless name_bday_hash[name] == nil
  bday = Time.parse(name_bday_hash[name])
else
  puts "Not in the database!"
  exit
end

age = 0

now = Time.new

while Time.local(bday.year + age, bday.month, bday.day) < now
  age += 1
end

puts "Next birthday for #{name} is on #{bday.year + age}-#{bday.month}-#{bday.day}."
puts "He will be #{age} years old."