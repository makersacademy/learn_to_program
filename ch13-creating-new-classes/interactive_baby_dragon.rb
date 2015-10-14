class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born"

  end

  def feed
    puts "you feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "you walk #{@name}"
    @stuff_in_intestine
    passage_of_time
  end

  def put_to_bed
    puts "you put #{@name} to bed."
    @asleep = true

    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke"
      end
    end

    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "you toss #{@name} up into the air."
    passage_of_time
  end

  def rock
    puts "you rock #{@name} gently"
    @asleep = true
    puts "He briefly"
    passage_of_time
    if @asleep == false
      puts "but wakes when"
    end
  end

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      ￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼exit # This quits the
    end

      if @stuff_in_intestine >= 10
         @stuff_in_intestine = 0
         puts "Whoops! #{@name} had an accident"
      end

      if hungry?
        if @asleep
          @asleep = false
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

puts "Pickup a Dragon name"
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts "command: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed
  else
    puts 'Please type one commands'
  end
end
