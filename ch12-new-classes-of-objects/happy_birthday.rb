# your code here

puts "which year were you born?"
birthyear = gets.chomp.to_i

puts "which month? (1-12)"
birthmonth = gets.chomp.to_i

puts "which date?"
birthdate = gets.chomp.to_i

b = Time.local(birthyear, birthmonth, birthdate)
y = Time.new

age = y.year - birthyear

age.times { puts "SPANK" }