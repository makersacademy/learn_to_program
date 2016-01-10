class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 #full
    @stuff_in_intestine = 0 #doesn't need to go

    puts "#{@name} is born."
    interact
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You take #{name} for a walk and avert your eyes while he does the neccassary.  Pretending not to notice how the
          pavement smokes, sulfurously as you walk away."
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
    puts "They giggle, which singes your eyebrows"
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @alseep = true
    puts "They briefly doze off"
    passage_of_time
      if @alseep
        @asleep = false
        puts '....but wakes when you stop.'
      end
  end

  def interact
    puts "What would you like to do? (walk, feed, rock, toss or put #{@name} to bed?)"
    print ">"
    @response = gets.chomp
    if @response.downcase.include? "walk"
      self.walk
    elsif @response.downcase.include? "feed"
      self.feed
    elsif @response.downcase.include? "rock"
      self.rock
    elsif @response.downcase.include? "bed"
      self.put_to_bed
    elsif @response.downcase.include? "toss"
      self.toss
    else
      puts "#{@name} doesn't seem to like that, maybe try something else?"
      passage_of_time
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
    if stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts "They wake up suddenly!"
      end
      puts "#{@name} is starving! In desperation he ate YOU!"
      exit
    end

    if stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops, they had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "They wake up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "They wake up suddenly!"
      end
      puts "#{name} does the potty dance..."
    end
    interact
  end

end

pet = Dragon.new "Norbet"
