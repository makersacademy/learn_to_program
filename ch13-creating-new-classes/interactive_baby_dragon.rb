# your code here
puts 'Please put in the name for your dragon.'
name = gets.chomp
pet_dragon = Dragon.new name

while true
  puts
  puts 'commands: feed, toss, walk, rock, put to bed, exit'
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    pet_dragon.feed
  elsif command == 'toss'
    pet_dragon.toss
  elsif command == 'walk'
    pet_dragon.walk
  elsif command == 'rock'
    pet_dragon.rock
  elsif command == 'put to bed'
    pet_dragon.put_to_bed
  else
    puts 'Please type in a valid command.'
  end
end
