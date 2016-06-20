# require class Dragon

while true
    puts
    puts 'commands: feed, toss, walk, rock, put to bed, exit'
    command = gets.chomp

case commands

  when command == 'exit'
    exit
  when command == 'feed'
    pet.feed
  when command == 'toss'
    pet.toss
  when command == 'walk'
    pet.walk
  when command == 'rock'
    pet.rock
  when command == 'put to bed'
    pet.put_to_bed
  else
    puts 'Huh? Please type one of the commands.'
  end
end
