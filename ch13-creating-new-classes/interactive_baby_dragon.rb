class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @belly = 10
    @bladder = 0
    puts "#{@name} is born"
  end

  def walk
    puts "You walk #{@name}."
    @bladder = 0
    passage_of_time
  end

  def feed
    puts "You feed #{@name}."
    @belly = 10
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
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
    if @asleep
      @asleep = false
      puts '...but wakes up when you stop.'
    end
  end

  private

  def hungry?
    @belly <= 2
  end

  def poopy?
    @bladder >= 8
  end

  def passage_of_time
    if @belly > 0
      @belly -= 1
      @bladder += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation he ate YOU!"
      exit
    end
    if @bladder >= 10
      @bladder = 0
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
        "He wakes up suddenly!"
      end
      "#{@name} does the potty dance..."
    end
  end
end
puts '-' * 50
puts 'Your brand new baby dragon'.center(50)
puts '-' * 50
print "What would you like to call your dragon?  "
name = gets.chomp
dragon = Dragon.new(name)
while true
  puts
  puts 'commands: feed, toss, walk, rock, put to bed, exit'
  puts
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    dragon.feed
  elsif command == 'toss'
    dragon.toss
  elsif command == 'walk'
    dragon.walk
  elsif command == 'rock'
    dragon.rock
  elsif command == 'put to bed'
    dragon.put_to_bed
  else
    puts 'Please put a valid command: '
  end
end
