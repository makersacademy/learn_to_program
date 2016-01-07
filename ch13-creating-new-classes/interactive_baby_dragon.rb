puts "What is the name of your dragon"
name = gets.chomp
dragon = Dragon.new(name)

puts "What would you like to do to the dragon? Feed/walk/toss/put to bed/rock?"
input = gets.chomp.downcase

if input == "feed"
  dragon.feed
elsif input == "walk"
  dragon.walk
elsif input == "toss"
  dragon.toss
elsif input == "put to bed"
  dragon.put_to_bed
elsif input == "rock"
  dragon.rock
else 
  puts "Learn to spell."
end
 

