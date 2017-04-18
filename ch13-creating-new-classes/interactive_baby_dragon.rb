require_relative './baby_drag.rb'

print 'Welcome to Drag_a_gotchi. Please enter your dragon\'s name: '
name = gets.chomp

drag = Dragon.new name

puts "There a number of things you can do with #{name}. Type 'commands' to show a list of commands."

commands = %w{rock toss puttobed walk feed }

loop do
  print '> '
  cmd = gets.chomp
  
  case cmd
    when 'commands' then puts commands
    when 'exit' then exit
    when 'rock' then drag.rock
    when 'toss' then drag.toss
    when 'puttobed' then drag.put_to_bed
    when 'walk' then drag.walk
    when 'feed' then drag.feed
    else puts 'please enter one of the commands available (enter "commands" for a list of commands available)'
  end
end
