# your code here
=begin

Interactive baby dragon. Write a program that lets you enter commands
such as feed and walk and calls those methods on your dragon. Of course,
since you are inputting just strings, you will need some sort of method
dispatch, where your program checks which string was entered and then
calls the appropriate method

=end

class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly= 10
    @stuff_in_intestine = 0
    puts "\n#{@name} is born."
  end

  def feed
    puts "\nYou feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "\nYou walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "\nYou put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#\n{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "\n#{@name} wakes up slowly."
    end
  end

  def toss
    puts "\nYou toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "\nYou rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def hungry?
    # Method names can end with "?".
    # Usually, we do this only if the method
    # returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
    # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly -1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts "\nHe wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "\nWhoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
      @asleep = false
      puts "\nHe wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "\nHe wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

def show_prompt
  puts "\ntype a command"
end

def help
  puts "list of commands:\n feed\n walk\n put to bed\n toss\n rock\nexit\n"
  puts
  show_prompt
end

def welcome
  puts "Hello and welcome to 'How to train your dragon, ruby version'"
  puts "First of all, choose a name for your dragon: "
end

welcome
name = gets.chomp
pet = Dragon.new name
puts "OK, now choose what to do to your dragon, or exit to stop"
puts "(Hint, type 'help' for a list of commands"
while command = gets.chomp.downcase
  case command
  when "help"
    puts "list of commands:\n feed\n walk\n put to bed\n toss\n rock\n exit\n"
    show_prompt
  when "feed"
    pet.feed
    show_prompt
  when "walk"
    pet.walk
    show_prompt
  when "put to bed"
    pet.put_to_bed
    show_prompt
  when "toss"
    pet.toss
    show_prompt
  when "rock"
    pet.rock
    show_prompt
  when "exit"
    puts "\ngood bye!"
    exit
  else
    puts "\nsorry I don't understand, type help for help"
    show_prompt
  end
end






