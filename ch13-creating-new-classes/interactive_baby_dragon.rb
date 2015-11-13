puts "Ok then, what's the dragon called? "
name = gets.chomp.capitalize
pet = Dragon.new(name)
puts "Right then, select one of the following options: "

while true
  puts "feed, walk, put to bed, toss, rock, exit "
  choice = gets.chomp
  break if choice == "exit"
  case choice
    when "feed" then pet.feed
    when "walk" then pet.walk
    when "put to bed" then pet.put_to_bed
    when "toss" then pet.toss
    when "rock" then pet.rock
    else puts "Sorry, I didn't understand your choice."
  end
end