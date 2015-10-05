#After spending a fruitless hour on this I copied this out from Chris Pine solution - but I made sure I understand it.


birth_dates = {}
File.read('list_of_birthdays.txt').each_line do |line|
line = line.chomp
# Find the index of first comma,
# so we know where the name ends.
first_comma = 0
while line[first_comma] != ',' &&
first_comma < line.length
first_comma = first_comma + 1
end

name = line[0..(first_comma - 1)]
date = line[-12..-1]
birth_dates[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]
if date == nil
puts "Oooh, I don't know that one..."
else
puts date[0..5]
end