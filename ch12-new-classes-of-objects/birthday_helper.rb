birthday_book = {}

File.readlines("birthdays.txt").each do |line|
  name, date, year = line.split(",")
  birthday_book[name] = date
end

puts "Who?"
name = gets.chomp

p "#{birthday_book[name]}'s birthday will be on #{date}!"
