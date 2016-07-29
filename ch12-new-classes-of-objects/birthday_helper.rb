birthdays = {}

File.open('birthdays.txt').each_line do |line|
  name, date, year = line.split", "
  birthdays[name] = Time.gm(year,*(date.split' '))
end

puts "Whose birthday would you like to check?"
name = gets.chomp

if birthdays[name] == nil
  puts "Sorry, I don't know that person"
  exit
end

today = Time.new
birthday = birthdays[name]

if (today.month < birthday.month) || (today.month == birthday.month && today.day < birthday.day)
  next_bday_year = today.year
  age = today.year - birthday.year
elsif (today.month == birthday.month) && (today.day == birthday.day)
  puts "It's their birthday today!"
  exit
else
  next_bday_year = today.year + 1
  age = today.year - birthday.year + 1
end

puts "#{name} will be #{age} on #{birthday.day} #{birthday.month} #{next_bday_year}"
