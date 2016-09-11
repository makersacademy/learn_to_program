class dragon # creates class dragon
  def initialize name # initializes an instance of dragon called by its name
    @name = name.capitalize # instance variable name is equal name of the dragon
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born."
  end

  def feed
    puts "#{@name} has been fed, and is so happy now"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "#{@name} has enjoyed his walk!"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "#{@name} seemed tired and you put him to sleep"
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
      puts "#{@name} wakes up slowly"
    end
  end
  def toss
    puts "You toss #{@name} up into the air"
    puts "He giggles, which singes your eyebrows..."
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

  def hungy?
    @stuff_in_belly <= 2
  end
  def poopy?
    @stuff_in_intestine >=8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation he hates YOU!"
      exit # This quit the program
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whooops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grimbles..."
    end
    if poppy?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} does the potty dance... someone needs a walk!"
    end
  end
end

puts "Hello sir, what's the name of your new little dragon?"
name = gets.chomp.capitalize
pet = Dragon.new name


while true
  puts
  puts "Possible commands for your baby dragon: feed, toss, walk" +
  puts " rock, put to bed, exit."
  command = gets.chomp.downcase
  if command == "exit"
    exit
  elsif == "feed"
    pet.feed
  elsif == "toss"
    pet.toss
  elsif == walk
    pet.walk
  elsif == rock
    pet.rock
  elsif == put to bed
    pet.put_to_bed
  else
    puts "Please, choose one of the dragon commands."
  end
end
