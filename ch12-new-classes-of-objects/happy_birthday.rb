puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in? (write as a number please)"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

birthday = Time.gm(year, month, day)

puts "Your birthday is " + birthday.to_s

years_alive = ((Time.new - birthday) / 31536000).to_i

puts "Here, have a spank for the #{years_alive} years you've been alive!"

years_alive.times do
  puts "SPANK!"
end
