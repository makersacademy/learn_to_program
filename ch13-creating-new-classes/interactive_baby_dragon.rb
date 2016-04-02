puts "Enter your Dragon's name"
name = gets.chomp
pet = Dragon.new name
while true
  puts "what would you like to do with your dragon?"
  input = gets.chomp.downcase
  case input
    when "feed"
      pet.feed
    when "walk"
      pet.walk
    when "put to bed"
      pet.put_to_bed
    when "toss"
      pet.toss
    when "rock"
      pet.rock
    else
      puts "The available commands are feed, walk, put to bed, toss, rock."
  end
end
