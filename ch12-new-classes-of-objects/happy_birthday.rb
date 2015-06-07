puts "What year were you born in?"
year = gets.chomp

puts "Month?"
month = gets.chomp

puts "Day?"
day = gets.chomp

b = Time.gm(year, month, day)
t = Time.new

age = (t - b)/31536000

puts "You are #{age.to_i}-years-old! Here's a spank for every year you've wasted on this world!"

puts ("SPANK! " * age)