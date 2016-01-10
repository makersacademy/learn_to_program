puts "What year were you born?"
year = gets.chomp
year = year.to_i
puts "What month were you born?"
month = gets.chomp.to_i
puts "What day were you born?"
day = gets.chomp.to_i

birthday = Time.gm(year, month, day)
now = Time.new

age = now.year - birthday.year

if birthday.month < now.month || (birthday.month == now.month && birthday.day < now.day)
  puts "You are #{age} years old! Here is a 'SPANK!' for every birthday you have had: #{"\nSPANK! "*age}"
elsif birthday.month == now.month && birthday.day == now.day
  puts "Happy Birthday! You are #{age} today! Here is a 'SPANK!' for every birthday you have had: #{"\nSPANK! "*age}"
else
  age -= 1
  puts "You are #{age} years old! Here is a 'SPANK!' for every birthday you have had: #{"\nSPANK! "*age}"
end
