
puts "What year were you born?"
year = gets.chomp

puts "what month were you born?"
month = gets.chomp

puts "What day were you born?"
day= gets.chomp# your code here


years = (((Time.new - Time.new(year,month,day))/31104000).to_i)-1

puts "You are #{years} years old"

years.times do
  puts "SPANK!"
end