puts 'What year were you born?'
year = gets.chomp

puts 'What month were you born?'
month = gets.chomp


puts 'What day were you born?'
day = gets.chomp

b_day = Time.local(year,month,day)
today = Time.new

age = 1

while Time.local(year.to_i+age,month.to_i,day.to_i) <=  today
  age = age + 1
end

age > 1 ? y = 'years' : y = 'year'

puts "Today you are #{age} #{y} old !!!"

age.times { puts 'SPANK!'}