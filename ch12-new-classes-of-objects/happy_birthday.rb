puts 'What year were you born?'
year = gets.chomp
puts 'Okay, what month were you born?'
month = gets.chomp
puts 'And finally what day were you born?'
day = gets.chomp

seconds = Time.new - Time.local(year, month, day)
age = seconds / 31536000
puts "So you're #{age.floor} years old."
puts 'SPANK! ' * age
