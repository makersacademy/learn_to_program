filename = "birthdays.txt"

bday_hash = {}
age_hash = {}
now = Time.new

File.open(filename).each_line do |line|
  name, date, year = line.split(",")
  bday_hash[name] = date
  bday_time = Time.mktime(year, *(date.split))
  age = now.year - bday_time.year
  if bday_time.month < now.month || bday_time.month == now.month && bday_time.day <= now.day
    age_hash[name] = age + 1
  else
    age_hash[name] = age
  end
 end

puts "Whose birthday would you like to know?"
request = gets.chomp

puts "#{request}'s birthday is on #{bday_hash[request].strip}"
puts "#{request} will be #{age_hash[request]}"
