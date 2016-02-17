puts "Please give your baby dragon a name:"
name = gets.chomp
dragon = Dragon.new name
puts "Please type in your command:"
puts "feed, walk, put to bed, toss, rock, exit"
command = gets.chomp

if command == "feed"
  dragon.feed
elsif command == "walk"
  dragon.walk
elsif command == "put to bed"
  dragon.put_to_bed
elsif command == "toss"
  dragon.toss
elsif command == "rock"
  dragon.rock
elsif command == "exit"
  exit
else
  return "Please type in one of the following commands: feed, walk, put to bed, toss, rock, exit"
end
