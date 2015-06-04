puts "What day were you born?"
b_day = gets.chomp.to_i

puts "What month?"
b_month = gets.chomp.to_i

puts "What year?"
b_year = gets.chomp.to_i

b_time = Time.local(b_year, b_month, b_day)
billiontime = b_time + 10**9

difference = (billiontime - b_time) / 60 / 60 / 24 / 365

puts "You will be one billion seconds old on this date #{billiontime}"

puts "You are #{difference.to_i} years old."
puts "and you get a SPANK! for each birthday!"

age = 1

difference.to_i.times do
  puts "SPANK!"
end
