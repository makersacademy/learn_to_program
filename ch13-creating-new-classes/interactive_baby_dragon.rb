# require_relative "baby_dragon.rb"
# using the Dragon class from the chapter
def die message
  puts message
  exit
end

puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name
obj = Object.new
help = 'commands: feed, toss, walk, rock, put_to_bed, exit, help'
puts help
while true # I like this, just repeat until explicitly halted
  puts
  command = gets.chomp
  if command == 'exit'
    die "#{name} loves you anyway!"
  elsif pet.respond_to?(command) && !obj.respond_to?(command) # Like old browser sniffing with JS!
    pet.send command
  elsif command == help
    puts help
  else
    puts 'Please type one of the commands.'
  end
end
