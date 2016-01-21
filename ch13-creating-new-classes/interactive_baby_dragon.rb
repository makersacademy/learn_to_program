# Using our Dragon class from the book
puts "What do you want to name your baby dragon pet?"
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts 'These are commands you can use: feed, toss, walk, rock, put to bed, exit'
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed
  else
    puts "I don't understand this command, try with another one."
  end
end
