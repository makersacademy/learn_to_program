birthdays = {}

File.read("b_days.txt").each_line do |line|
  line = line.chomp
  name = line[0..21].strip
  date = line[-12..-1]
  birthdays[name] = date
end

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birthdays[name]

if date == nil
  puts "I don't know that one."
else
  puts date[0..5]
end





