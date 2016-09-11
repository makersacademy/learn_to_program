birthdates = {}

File.read('names.txt').each_line do |line|
name, date, year = line.split(',')
birthdates[name] = date
end

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birthdates[name]
if date == nil
  puts "No such name in my database"
else
  puts date[1..6]
end
