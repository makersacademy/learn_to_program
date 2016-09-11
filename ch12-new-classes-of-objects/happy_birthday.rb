puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in? (Jan = 1, Feb = 2, etc.)"
month = gets.chomp.to_i

puts "On what day were you born?"
day = gets.chomp.to_i

bdaytime = Time.local(year, month, day)
now = Time.new

age = 1

while Time.local(year + age, month, day) <= now
  puts "SPANK!"
  age = age + 1
end
