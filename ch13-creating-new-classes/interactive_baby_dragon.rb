# your code here
=begin
Write a program so that you can interact with your baby dragon. 
You should be able to enter commands like feed and walk, 
and have those methods be called on your dragon. Of course, 
since what you are inputting are just strings, you will have 
to have some sort of method dispatch, where your program checks 
which string was entered, and then calls the appropriate method. 
=end

puts "Program starts"

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.
    @input = ""

    puts @name + ' is born.'
  end

  def interact
  		puts "How do you want to interact with the baby dragon?"
  		puts "You can choose \"feed\", \"walk\", \"put to bed\", \"toss\" and \"rock\"."
  		@input = gets.chomp

  		while @input != "end"
  			puts "How do you want to interact with the baby dragon?"
  			puts "You can choose \"feed\", \"walk\", \"put to bed\", \"toss\", \"rock\", or \"end\" to finish."
  			
  			case @input

  			when "feed"
  				feed

  			when "walk"
  				walk

  			when "put to bed"
  				putToBed

  			when "toss"
  				toss

  			when "rock"
  				rock

  			when "end"
  				break

  			else
  				puts "That does not match any option."
  			end
  			@input = gets.chomp
  		end
  		puts "You say goodbye to the baby dragon"
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

puts "You create a baby dragon"
pet = Dragon.new 'Norbert'
pet.interact