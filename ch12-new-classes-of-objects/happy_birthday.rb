puts 'What year were you born?'
year = gets.chomp

puts 'What month were you born?'
month = gets.chomp

puts 'What day were you born?'
day = gets.chomp

age = (Time.now - Time.new(year, month, day)) / 31_557_600

puts 'Congrats you\'re ' + age.to_i.to_s
puts "SPANK!\n" * age
