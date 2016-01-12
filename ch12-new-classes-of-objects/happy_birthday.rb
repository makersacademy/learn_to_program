puts 'What year were you born?'
year = gets.chomp.to_i

puts 'What month were you born? (1-12)'
month = gets.chomp.to_i

puts 'What day of the month were you born?'
day = gets.chomp.to_i

b = Time.local(year, month, day)
t = Time.now

difference = t - b

age = (difference / 60 / 60 / 24 / 365).to_i

age.times do
  puts "SPANK!"
end