puts '-' *50
puts 'Birthday Beats calculator'.center(50)
puts '-' *50
puts ''
print "Pease enter your birth year:  "
year = gets.chomp
while year.to_i < 1900 || year.to_i > Time.new.year
  print "Error: Please enter a valid year:  "
  year = gets.chomp
end
print "Please enter your birthday month:  "
month = gets.chomp
while month.to_i < 1 || month.to_i > 12
  print "Error: Please enter a valid month (e.g 09):  "
  month = gets.chomp
end
print "Please enter your birthday date:  "
date = gets.chomp
while date.to_i < 1 || date.to_i > 31
  print "Error: Please enter a valid month (e.g 09):  "
  month = gets.chomp
end
puts ''
now = Time.new
birthday = Time.new(year,month,date)
age = now.year - birthday.year

if now.month < birthday.month || (now.month == birthday.month && now.day < birthday.day)
  age -= 1
end

puts "so you're #{age} are ya. Here have some Beats on me: "
puts
puts "*BEAT*\n" * age
puts
puts "Laters!"
puts ''
