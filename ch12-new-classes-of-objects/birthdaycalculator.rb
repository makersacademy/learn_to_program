puts "What day were you born?"
day = gets.chomp.to_i

puts "What month?"
month = gets.chomp.to_i

puts "What year?"
year = gets.chomp.to_i

b_time = Time.local(year, month, day)
billiontime = b_time + 10**9

difference = (billiontime - b_time) / 60 / 60 / 24 / 365

puts "You will be one billion seconds old on this date #{billiontime}"

puts "You are #{difference.to_i} years old."
puts "and you get a SPANK! for each birthday!"

age = 1

difference.to_i.times do
  puts "SPANK!"
end
