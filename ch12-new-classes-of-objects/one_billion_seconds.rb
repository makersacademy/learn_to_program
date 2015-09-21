# your code hereputs "What year were you born in?"
year = gets.chomp.to_i
puts "What month? (1-12)"
month = gets.chomp.to_i
puts "What day? (1-31)"
day = gets.chomp.to_i
puts "What hour? (0-23)"
hour = gets.chomp.to_i
puts "What minute? (0-59)"
minute = gets.chomp.to_i


now = Time.new
birthday = Time.local(year, month, day, hour, minute)
seconds = now - birthday

bnbday = now+(1000000000-seconds)

puts "You are #{seconds/31557600} years old"
puts "You are #{seconds} seconds old."
puts "You will be 1billion seconds on #{bnbday}"