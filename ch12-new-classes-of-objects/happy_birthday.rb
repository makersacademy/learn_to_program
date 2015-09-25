puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

puts "you were born "
puts birth = Time.local(year, month, day)

puts "today is: "
puts today = Time.new

puts "Difference is "
puts difference = today - birth

age = difference / 3600 / 24 / 365

puts "you age is "
puts age.to_i

i = 1
while i <= age.to_i
	puts "SPANK"
	i += 1
end