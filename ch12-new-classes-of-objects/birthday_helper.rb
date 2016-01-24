

birth_dates = {}

File.read('birthdates.txt').each_line do |line|
	line.chomp
	name, date, year = line.split(',')
	birth_dates[name] =Time.gm(year, *(date.split))
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "I have no idea."
else
  now = Time.new
  age = now.year - bday.year

  date = bday.strftime "%b %d"
  puts "#{name} will be #{age} on #{date}."
end