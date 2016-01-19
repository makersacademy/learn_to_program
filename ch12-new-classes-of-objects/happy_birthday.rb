puts "In what year were you born?"
b_year = gets.chomp.to_i

puts "In what month were you born? (1-12)"
b_month = gets.chomp.to_i

puts "On what day of the month were you born?"
b_day = gets.chomp.to_i

b = Time.local(b_year, b_month, b_day)
t = Time.new
age = 1

while Time.local(b_year + age, b_month, b_day) <= t
  puts "SPANK!"
  age = age + 1
end