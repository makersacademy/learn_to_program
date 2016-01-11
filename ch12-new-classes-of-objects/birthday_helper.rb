puts "Give me a name please"
birth_dates = {}
File.read('birthdates.txt').each_line do |line|
name = gets.chomp
data_from_file = #pull in details from file with names as keys and birthdays as hash. Then search for birthday via name key.
birthday = data_from_file.key(name) #make sure saving the value not the key
next_birthday =
now = Time.new
age = now.year - birthday.year
age-= 1 if birthday.month > now.month || (birthday.month == now.month && birthday.day > now.day)

if next_birthday == now
  puts "It is #{name}'s birthday today! They are #{age} years old"
else
  puts "#{name}'s next birthday will be on the #{next_birthday} and they will be #{age} years old"
end
