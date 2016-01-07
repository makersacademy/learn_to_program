bdays = File.read ('/Users/zeshanrasul/Coding/Ruby/learn_to_program/ch12-new-classes-of-objects/birthdays.txt')

bdays_hash = {}

bdays.each_line do |line|
  line.chomp!

  date = line[-12..-1]
  name = line[0..(line.length - 15)]

  bdays_hash[name] = date
end

puts "Who's birthday would you like to know"
name = gets.chomp

birthday = bdays_hash[name]
bday_array = birthday.split(", ")

month = bday_array[0]
day = bday_array[1]
year = bday_array[2]
bday_year = Time.mktime(year, month, day)
age = Time.now - bday_year
age = (age / 31536000).to_i

puts "#{name}'s birthday was born on #{birthday}."
puts "#{name}'s age is #{age}."
puts "#{name}'s next birthday will be on #{day}, #{month}, 2016 and they will be #{age + 1} years old."
