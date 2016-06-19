birth_dates = {}
File.read('birthday.txt').each_line do |line|
  line = line.chomp
  splitting = line.split(',',2)
  birth_dates[splitting[0]] = [splitting[1..2]]
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Sorry, I don't know that one..."
else
  puts date[0..5]
end