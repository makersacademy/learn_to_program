now = Time.new

puts "What year were you born?"
Y = gets.chomp.to_i
puts "What number month were you born in?"
M = gets.chomp.to_i
puts "What number day were you born?"
D = gets.chomp.to_i
DOB = Time.local(Y,M,D)
age_s = now - DOB

StoY = 60 * 60 * 24 * 365.5

age = ( age_s / StoY ).floor

puts "You are #{age} years old"
age.times {puts "Bump!"}
