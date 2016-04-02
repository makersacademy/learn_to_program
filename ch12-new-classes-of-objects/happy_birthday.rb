#How Chris Pine would do it
puts 'Hey, when were you born? (Please use YYYYMMDD format.)'
input = gets.chomp

b_year = input[0..3].to_i
b_month = input[4..5].to_i
b_day = input[6..7].to_i

t = Time.new

t_year = t.year
t_month = t.month
t_day = t.day

age = t_year - b_year

if t_month < b_month || (t_month == b_month && t_day < b_day)
  age -= 1
end

if t_month == b_month && t_day == b_day
  puts 'HAPPY BIRTHDAY!!'
end

age.times { puts 'SPANK!' }

#how you could do it
=begin
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
=end