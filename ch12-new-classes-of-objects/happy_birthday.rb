puts 'what year was you born?'
year = gets.chomp.to_i

puts 'what month was you born?'
month = gets.chomp.to_i

puts 'what day was you born?'
day = gets.chomp.to_i

dob = time.local(year, month, day)
time = Time.new

age = 1

while Time.local(b_year + age, b_month, b_day) <= t
  puts 'SPANK!'
  age = age + 1
end

