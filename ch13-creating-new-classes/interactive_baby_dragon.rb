# Interactive baby dragon. Write a program that lets you enter commands such as 
# feed and walk and calls those methods on your dragon. Of course, since you are 
# inputting just strings, you will need some sort of method dispatch, where your 
# program checks which string was entered and then calls the appropriate method.

# Worked through this example with the solution - revisit.

# using the Dragon class from the chapter
puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts 'commands: feed, toss, walk, rock, put to bed, exit'
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
    puts 'Huh? Please type one of the commands.'
  end
end

