puts "What would you like to name our baby dragon?"
name = $stdin.gets.chomp
pet = Dragon.new(name)
while true
  puts
  puts "Commands: feed, toss, walk, rock, puts to bed, exit"
  command = $stdin.gets.chomp
  if command == "exit"
    exit
  elsif command == "feed"
    pet.feed
  elsif command == "toss"
    pet.toss
  elsif command == "walk"
    pet.walk
  elsif command == "rock"
    pet.rock
  elsif command == "put to bed"
    pet.put to bed
  else
    puts "Huh? Please type one of the commands."
  end
end
