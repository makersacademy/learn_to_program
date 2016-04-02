puts "Welcome to the dragon adpotion agency. Please name your new buddy!"
name = gets.chomp
dragon = Dragon.new name

while true # stole this from Chris Pine's solution - couldn't work out how to loop through commands
  puts "Please enter a letter corresponding to a command:"
  puts "walk (w), toss (t), put into bed (b), rock (r), feed (f)."
  command = user.gets.chomp.downcase

  if command == "w"
    dragon.walk
  elsif command == "t"
    dragon.toss
  elsif command == "b"
    dragon.put_to_bed
  elsif command == "r"
    dragon.rock
  elsif command == "f"
    dragon.feed
  else puts "I don't know what you mean!"
  end
end
