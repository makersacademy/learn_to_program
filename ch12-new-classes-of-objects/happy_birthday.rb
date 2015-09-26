puts "What is your birth year?"
birth_year = gets.chomp.to_i

puts "What is your birth month?"
birth_month = gets.chomp.to_i

puts "What is your birth day?"
birth_day = gets.chomp.to_i

time_now = Time.new

age = 0

while Time.local(birth_year+age,birth_month,birth_day) <= time_now
age += 1
end

if Time.local(birth_year+age,birth_month,birth_day) > time_now
age -= 1
end

puts age

age > 0? age.times {puts "SPANK!"} : "-"
