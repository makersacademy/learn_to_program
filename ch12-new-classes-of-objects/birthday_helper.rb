birthdays = {}

File.readlines('birthdays.txt').each do |l|
  name, date, year = line.split(',')
  birthdays[name] = Time.gm(year, *(date.split))
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birthdays[name]

if !bday
  puts 'Unknown name!'
else
  puts bday
end