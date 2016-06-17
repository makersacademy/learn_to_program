dash = "-" * 50

puts dash
puts "Birthday Beats".center(50)
puts dash
puts

puts "What year where you born in?"
year = gets.chomp.to_i
while year < 1900 || year > Time.new.year
  print "Error: Please enter a valid year: "
  year = gets.chomp.to_i
end
puts
puts dash
puts

puts "What month where you born in? (1-12)"
month = gets.chomp.to_i
while month < 1 || month > 12
  print "Error: Please enter a valid month: "
  month = gets.chomp.to_i
end
puts
puts dash
puts

puts "What day where you born on?"
day = gets.chomp.to_i
while day < 1 || day > 31
  print "Error: Please enter a valid day: "
  day = gets.chomp.to_i
end
puts
puts dash
puts

birthday = Time.new(year, month, day)
age = Time.new.year - birthday.year

if Time.new.month < birthday.month || (Time.new.month == birthday.month && now.day < birthday.day)
  age -= 1
end

puts "You are #{age} years old! Time for some birthday beats!!!"
puts
puts "*BEAT* \n" * age
