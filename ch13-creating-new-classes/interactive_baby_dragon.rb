puts "What would you like to name your baby dragon?"
name = gets.chomp
pet = Dragon.new.name

while true
  puts
  puts "commands: feed, toss, walk, rock, put to bed, exit."
  command = gets.chomp
  if command == "exit"
    exit
  elsif command == "feed"
    pet.feed
  elsif command == "toss"
    pet.toss
  elsif command == "walk"
    pet.walk
  elsif command == "put to bed"
    pet.put_to_bed
  else
    puts "That is not a valid command"
  end
end
    