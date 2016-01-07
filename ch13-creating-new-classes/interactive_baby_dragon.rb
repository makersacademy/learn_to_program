require_relative "dragon.rb"
def interactive_dragon
  puts "What do you want to call your dragon?"
  name = gets.chomp
  dragon = Dragon.new name
  
  puts "What would you like to do with your dragon? For a list of options type 'help'"
  while input = gets.chomp
    case
      when input == "help"
        puts "To feed your dragon type 'feed'"
        puts "To walk it type 'walk'"
        puts "If it is tiered 'put to bed'"
        puts "Toss it with 'toss"
        puts "Rock him to sleep with 'rock'"
        puts "Or exit with 'exit'"
      when input == "feed"
        dragon.feed
      when input == "walk"
        dragon.walk
      when input == "put to bed"
        dragon.put_to_bed
      when input == "toss"
        dragon.toss
      when input == "rock"
        dragon.rock
      else
        puts "That isn't an option, try something else or type help for a list of commands"
    end
    
    break if input.downcase == "exit"
  end
end

interactive_dragon