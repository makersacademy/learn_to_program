puts 'What year were you born'
year = gets.chomp.to_i
puts 'what month were you born in?'
month = gets.chomp.to_i
puts 'What day were you born?'
day = gets.chomp.to_i
time = Time.local(year, month, day)
time_now = Time.new
age = 1

while Time.local(year + age, month, day) <= time_now
puts 'SPANK!"
age = age + 1

end
