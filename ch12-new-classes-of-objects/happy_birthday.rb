puts 'What year were you born?'
year = gets.chomp.to_i

puts 'And what month were you born in?'
month = gets.chomp.to_i

puts 'Finally, what day of the month were you born?'
day = gets.chomp.to_i

#present date
t = Time.new 

age = 1

while Time.local(year + age, month, day) <= t
  puts 'SPANK!'
  age +=1
end