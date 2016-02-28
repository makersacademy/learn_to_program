puts "Please name your dragon yo?"
name = gets.chomp
newdrag = Dragon.new name

while true
puts "What would you like to do? exit/feed/walk/put_to_bed/toss/rock"
dowhat = gets.chomp


  if dowhat == "exit"
    exit
  elsif dowhat == "feed"
    newdrag.feed
  elsif dowhat == "walk"
    newdrag.walk
  elsif dowhat == "put_to_bed"
    newdrag.put_to_bed
  elsif dowhat == "toss"
    newdrag.toss
  elsif rock == "rock"
    newdrag.rock
  else
  puts  "That's not a command"
  end
end
