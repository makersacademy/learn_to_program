# your code here
puts "What year are you born in?"

year = gets.chomp.to_i

puts "Which month? Please put 1 to 12."

month = gets.chomp.to_i

puts "Which day?"

day = gets.chomp.to_i


now = Time.new

age = 1

while Time.local(year+age, month, day) < now
  puts "SPANK \##{age}"
  age += 1
end