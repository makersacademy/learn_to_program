
# #Happy Birthday

puts "What year were you born?"

birthYear = gets.chomp.to_i

puts "What month were you born? (1-12)"

birthMonth = gets.chomp.to_i

puts "What date were you born?"

birthDate = gets.chomp.to_i

t = Time.new

date_string = Time.local(birthYear,birthMonth,birthDate)
puts date_string


years_passed = (t - date_string).to_i/60/60/24/365

puts "SPANK\n" * years_passed
