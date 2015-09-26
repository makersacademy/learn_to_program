# Chris Pine, chapter 13 #
##########################

require_relative './baby_dragon.rb'

# Interactive baby dragon. Write a program that lets you enter commands
# such as feed and walk and calls those methods on your dragon. Of course,
# since you are inputting just strings, you will need some sort of method
# dispatch, where your program checks which string was entered and then
# calls the appropriate method.
class Dragon
  def play
    @commands = %w(feed toss rock put_to_bed walk quit)

    print '>  '
    command = $stdin.gets.chomp.gsub(/\s/, '_')
    begin
      @commands.include?(command) ? send(command) : fail
    rescue
      puts 'That is not a proper command. Try again'
      play
    end
    play
  end

  def quit
    puts "#{@name} wil miss you. Bye bye."
    exit(0)
  end
end

def welcome
  system('clear')
  puts '''
  Welcome to the interactive dragon pet game. The game is simple:
  take care of the dragon and it takes care of you. The following
  commands can be used: \'feed\', \'walk\', \'put to bed\', \'toss\' and
  \'rock\'. Type \'quit\' if you wish to abandon the game.

  '''
  print 'To start, name your pet:  '
  name = gets.chomp
  pet = Dragon.new(name)
  pet.play
end

welcome
