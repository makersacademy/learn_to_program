puts "In what year were you born?"
year = gets.chomp

puts "In which month? Give month as an integer between 1 and 12"
month = gets.chomp

puts "...and on what date?"
day = gets.chomp

today = Time.new
birthday = Time.local(year, month, day)

age = (today - birthday) / 31536000

int_age = age.to_i

int_age.times do |i| puts "#{i+=1} SPANKS!" end
