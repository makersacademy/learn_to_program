puts "Give me a name please"
name = gets.chomp
data_hash = {}

file = File.open('birthday_helper_detail.txt', 'r')
while !file.eof?
  line = file.readline
  name, month, day, year, = line.split(',')
  data_hash[name] = Time.gm(year, month, day)
end
file.close

birthday = data_hash[name]
puts "I don't know that person's birthday..." if birthday == nil then exit[0]
next_birthday = Time.gm(birthday.month, birthday.day)
now = Time.new
age = now.year - birthday.year
age-= 1 if birthday.month > now.month || (birthday.month == now.month && birthday.day > now.day)

if next_birthday.month == now.month && next_birthday.day == now.day
  puts "It is #{name}'s birthday today! They are #{age} years old... you really should have sent a card already."
else
  puts "#{name}'s next birthday will be on the #{next_birthday} and they will be #{age} years old"
end
