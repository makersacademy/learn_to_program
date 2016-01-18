# your code hereputs 'What year were you born?'
birth_year = gets.chomp.to_i

puts 'What month were you born? (1-12)'
birth_month = gets.chomp.to_i

puts 'What day of the month were you born?'
birth_day = gets.chomp.to_i

b = Time.local(birth_year, birth_month, birth_day)
t = Time.new

age = 1

while Time.local(birth_year + age, birth_month, birth_day) <= t
  puts 'SPANK!'
  age = age + 1
end