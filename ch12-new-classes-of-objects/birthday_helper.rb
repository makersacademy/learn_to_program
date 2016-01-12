require 'time'
filename = "birthdays.txt"
birth_dates = Hash.new

File.read(filename).each_line do |line|
  name, date, year = line.split(",")
  birth_dates[name] = Time.parse(year + date)
end

puts "Whose birthday would you like to know?"
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "No record for #{name}."
else
  time = Time.new
  age = time.year -  bday.year

  if time.month > bday.month ||(time.month == bday.month && time.day > bday.day)
    age += 1
  end

  if time.month == bday.month && time.day == bday.day
    puts "#{name} turns #{age} today!"
  else
    puts "#{name} will be #{age} on #{bday.strftime("%e %b")}"
  end
end