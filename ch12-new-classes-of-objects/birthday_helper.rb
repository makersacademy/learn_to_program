# I've completed the task here, but I only return the date of the birthday.
# I don't calculate how old they will turn as well.

birthdays = {}

File.readlines('birthdays.txt').each do |line|
   name, date, year = line.split(',')
   birthdays[name] = date
end

p birthdays

puts "Whose birthday are you after?"
name = gets.chomp

puts "No idea, but I do know LOADS of other birthdays" if name == nil
puts "Their next birthday will be on #{birthdays[name]}"
