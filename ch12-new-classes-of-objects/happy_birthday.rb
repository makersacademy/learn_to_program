puts 'What\'s your date of birth? (DDMMYYYY)'
date = gets.chomp

day   = date[0..1].to_i
month = date[2..3].to_i
year  = date[4..7].to_i

now   = Time.new
age   = 1

while Time.local(year+age, month, day) <= now
  puts 'SPANK!'
  age = age + 1
end