puts 'What year were you born?'
year = gets.chomp.to_i
puts 'What month were you born? (1-12)'
month = gets.chomp.to_i
puts 'What day of the month were you born?'
day = gets.chomp.to_i
b = Time.local(year, month, day)
t = Time.new
age = 1
while Time.local(year + age, month, day) <= t
puts 'SPANK!'
age = age + 1
end