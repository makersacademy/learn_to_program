class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
    puts "#{@name} just hatched from the mystical egg."
  end

  def feed
    puts "You feed #{@name} the bodies of your enemies."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You take a walk through the village with #{@name} balanced on your shoulder."
    @stuff_in_intestine = 0
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
          puts "#{@name} snores, and you question whether he has sleep apnoea."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'Some of his slobber lands in your mouth. Ew.'
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

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
    puts "#{@name} is starving! In desperation, he fly's off to McDonals for a fillet o' fish. What a weirdo."
    exit # This quits the program.
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Oh betty! #{@name}'s done a whoopsy on the carpet.'"
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

pet = Dragon.new 'Toothless'

pet.feed

pet.toss

pet.walk

pet.put_to_bed

pet.rock

pet.put_to_bed

pet.put_to_bed

pet.put_to_bed

pet.put_to_bed
