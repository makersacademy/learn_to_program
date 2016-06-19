class Dragon

  attr_reader :name

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
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
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private
  def hungry?
    @stuff_in_belly <=2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end
    if @stuff_in_intestine >=  10
      @stuff_in_intestine = 0
      puts "Whoops!  #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the poty dance..."
    end
  end

end


puts "What would you like to name your dragon?"

pet = Dragon.new "#{gets.chomp}"

quitx = 0
while quitx == 0
  puts "What would you like to do with #{pet.name}?"
  puts "Feed, Walk, Put to bed, Toss, Rock, Quit"

  choice = gets.chomp.to_s.downcase

  case choice

  when "feed"
    pet.feed

  when "walk"
    pet.walk

  when "put to bed"
    pet.put_to_bed

  when "toss"
    pet.toss

  when "rock"
    pet.rock

  when "quit"
    quitx += 1

  else
    puts "Please type a choice as listed."

  end
end
