puts 'What year were you born?'
year = gets.chomp.to_i
puts 'And what month?'
month = gets.chomp.to_i
puts 'And finally the date?'
date = gets.chomp.to_i

x = Time.local(year, month, date)
y = Time.new

age = 1

while Time.local(year + age, month, date) <= y
  puts 'SPANK!'
  age = age + 1
end
