puts "What year were you born?"
b_year = gets.chomp.to_i

puts "What month were you born? (number)"
b_month = gets.chomp.to_i

puts "What day were you born?"
b_day = gets.chomp.to_i

b = Time.local(b_year, b_month, b_day)
t = Time.now

age = 1

while Time.local(b_year + age, b_month, b_day) <= t
  puts "Spank!"
  age = age + 1
end
