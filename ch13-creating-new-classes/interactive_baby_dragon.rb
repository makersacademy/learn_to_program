# using Dragon class from Chris Pine Learning_to_Program ch.13

puts "What would you like your dragon to be called?"
name = gets.chomp

dragon = Dragon.new (name)

puts "Please choose a command from this list: feed, walk, put_to_bed, exit"
command = gets.chomp

while command != "exit" do
    if command == "feed"
        dragon.feed
    elsif command == "walk"
        dragon.walk
    elsif command = "put_to_bed"
        dragon.put_to_bed
    else
        "Please type one of the commands listed."
    end
end