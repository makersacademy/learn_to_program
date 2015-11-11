#Happy birthday! Ask what year a person was born in, then the month, and then the day. Figure out how old they are, and give them a big SPANK! for each birthday they have had.

puts "Hey there, what year were you born in?"
year = gets.chomp

puts "and what month?"
month = gets.chomp

puts "and what day?"
day = gets.chomp

((Time.new - Time.gm(year, month, day)) / 31536000).to_i.times do
  puts "SPANK!"
end
