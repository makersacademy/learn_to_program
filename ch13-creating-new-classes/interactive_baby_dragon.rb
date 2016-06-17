# We use the Dragon class created in chapter 13

# Let's name it first:
puts "What's your baby dragon called?"
name = gets.chomp
baby_dragon = Dragon.new(name)

# Let's just keep entering commands until we use 'kill' to break.
while true
   puts "Command your dragon!"
   puts "(feed, walk, put_to_bed, rock, toss, exit)"
   command = gets.chomp.downcase
   case command
   when "feed"
      baby_dragon.feed
   when "walk"
      baby_dragon.walk
   when "put_to_bed"
      baby_dragon.put_to_bed
   when "rock"
      baby_dragon.rock
   when "toss"
      baby_dragon.toss
   when "exit"
      break
   else
      puts "He can't do that! Try again."
   end

end
