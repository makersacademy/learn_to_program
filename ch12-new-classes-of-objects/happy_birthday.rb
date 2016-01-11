# My first attempt:
#
#def birthday
#  puts "What year were you born in?"
#    year = gets.chomp.to_i
#    puts "What month of the year were you born in?"
#      month = gets.chomp.to_i
#    puts "What day in the month where you born?"
#      day = gets.chomp.to_i
#
#  dob = Time.local(year, month, day)
#
#  age = Time.new - dob
#
#end

#The solution:

puts birthday

puts 'What year were you born?'
b_year = gets.chomp.to_i

puts 'What month were you born? (1-12)'
b_month = gets.chomp.to_i

puts 'What day of the month were you born?'
b_day = gets.chomp.to_i

b = Time.local(b_year, b_month, b_day)
t = Time.new

age = 1

while Time.local(b_year + age, b_month, b_day) <= t
  puts 'SPANK!'
  age = age + 1
end
