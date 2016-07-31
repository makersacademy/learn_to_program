puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts "please enter a command: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp

  commands = {"feed" => feed, "toss" => toss, "walk" => walk,
        "rock" => rock, "put to bed" => put_to_bed}

  if command == "exit"
    exit
  elsif pet.respond_to?commands[command]
    pet.send commands[command]
  else
    puts "need one of the commands: feed, toss, walk, rock, put to bed, exit"
  end
end
