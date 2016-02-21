bday = {}
File.read('bday.txt').each_line do |line|
  key, value = line.split ', ', 2
  bday[key] = value.chomp
  end

puts 'Gimme full name, I give you birthday:'
name = gets.chomp
date = bday[name]

if date == nil
  puts 'No clue who you\'re on about.'
else
  puts date
end
