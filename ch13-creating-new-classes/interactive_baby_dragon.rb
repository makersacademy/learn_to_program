p 'How would you like to name your dragon?'
name = gets.chomp
drake = Dragon.new name

while true
  p 'Available commands: feed, toss, walk, rock, put to bed, exit'
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    drake.feed
  elsif command == 'toss'
    drake.toss
  elsif command == 'walk'
    drake.walk
  elsif command == 'rock'
    drake.rock
  elsif command == 'put to bed'
    drake.put_to_bed
  else
    puts 'Please type in a valid command.'
  end
end