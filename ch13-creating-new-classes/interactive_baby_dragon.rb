class Dragon

  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full
    @stuff_in_intestine = 0

    puts "#{@name} is born."
  end

  def method_despatch(instruction)
    if instruction.downcase == 'feed'
      feed
    elsif instruction.downcase == 'walk'
      walk
    elsif instruction.downcase == 'bed'
      put_to_bed
    elsif instruction.downcase == 'toss'
      toss
    elsif instruction.downcase == 'rock'
      rock
    elsif instruction.downcase == 'quit'
      exit
    else
      puts "Please enter one of the valid commands"
    end
  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed"
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private
  # means methods defined here are methods internal
  # to the object. (You can feed your dragon, but
  # you can't ask him whether he's hungry.)

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >=8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # move food from belly to intestine
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else #our dragon is straving
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end

end


puts "What would you like to call your dragon?"
name = gets.chomp
dragon = Dragon.new(name)
while true
  puts "\nWhat would you like to do with your dragon?\nPlease enter a command: feed, walk, bed, toss, rock, quit"
  instruction = gets.chomp
  dragon.method_despatch(instruction)
end
