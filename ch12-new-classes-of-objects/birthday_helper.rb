birth_dates = {}
File.read('birthday.txt').each_line do |line|
  line.chomp!
  splitter = line.split(',',2)
  birth_dates[splitter[0]] = [splitter[1..2]]
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

date == nil ? puts "Sorry, I don't know that one..." : puts date[0..5]
