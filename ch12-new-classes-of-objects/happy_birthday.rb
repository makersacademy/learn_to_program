puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in? (1-12)"
month = gets.chomp.to_i

puts "What date were you born on?"
date = gets.chomp.to_i

b = Time.local(year, month, date)
t = Time.new

age = 1

while Time.local(year + age, month, date) <= t
  puts 'SPANK!'
  age = age + 1
end


# your code here
