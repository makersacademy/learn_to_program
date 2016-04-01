puts "Hi there, just curious, what year where you born in?"
year = gets.chomp.to_i

puts "I see... and what month was it?"
month = gets.chomp.to_i

puts "and the day?"
day = gets.chomp.to_i

date = Time.new

while Time.local(year, month, day) <= date
  puts "SPANK!"
  year += 1
end



