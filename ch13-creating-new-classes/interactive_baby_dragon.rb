class Dragon

  def initialize name
      
      @name = name
      @asleep = false
      @stuff_in_belly = 10 # start with a full belly
      @stuff_in_intestine = 0 #start fresh
      
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
   puts "You put #{@name} to bed."
   @asleep = true
   3.times do
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
    puts "You toss #{@name} up in the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end
  
  def rock
    puts "You rock #{@name} gently."
    @asleep = true # he falls asleep
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes up suddenly"
    end
  end
  
  private
  
  def hungry?
    @stuff_in_belly <= 2 #hungry is less, equals 2
  end
  
  def poopy?
    @stuff_in_intestine >= 8 #need to go if greater, equals 8
  end
  
  def passage_of_time
  if @stuff_in_belly > 0 #is not starving
    @stuff_in_belly = @stuff_in_belly - 1  # moving the "food" in the dragon
    @stuff_in_intestine = @stuff_in_intestine + 1
    
  else
      if @asleep # if the dragon is asleep wahe him up.
          @asleep = false
          puts "He wakes up suddenly"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!" #after waking up, (or if was awake) he ates you.
      exit 
  end
  if @stuff_in_intestine >= 10 #if need to go, or too late
    @stuff_in_intestine = 0 #empty intestine..accident
    puts "Whoops! #{@name} had an accident..."
  end
  if hungry?
    if @asleep
      @asleep = false
      puts " He wakes up suddenly"
    end
    puts "#{@name}'s stomach grumbles..."
  end
  if poopy?
    if @asleep
      @asleep = false
      puts "He wakes up suddenly"
    end
    puts "#{@name} does the potty dance..."
  end
    
  end

end #end of class

puts "What would you like to name your baby dragon?"
name = gets.chomp
pet = Dragon.new name

while true
  puts "Commands: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp
  
  if command == "feed"
    pet.feed
  elsif command == "toss"
    pet.toss
  elsif command == "walk"
    pet.walk
  elsif command == "rock"
    pet.rock
  elsif command == "put to bed"
    pet.put_to_bed
  else
    puts "Please type one of the commands."
    
  end

end

