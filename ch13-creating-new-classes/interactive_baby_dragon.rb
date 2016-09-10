class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born!"
  end

  def feed
    puts "you feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "you walk #{@name}"
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
      puts "#{@name} snores, filling the room with smoke"
    end
   end
  if @asleep
    @asleep = false
    puts "#{@name} wakes up slowly"
  end
end

def toss
  puts "you toss #{@name} up into the air"
  puts "He giggles, which singes your eyebrows"
  passage_of_time
end

def rock
  puts "you rock #{@name} gently"
  @asleep = true
  puts "he briefly dozes off"
  passage_of_time
  if @asleep
    @asleep = false
    puts "but wakes when you stop"
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
   @stuff_in_belly     = @stuff_in_belly     - 1
   @stuff_in_intestine = @stuff_in_intestine + 1
  else
    if @asleep
      @asleep = false
      puts "He wakes up suddenly"
    end
    puts "#{@name} is starving, he ate you out of desperation!"
    exit #ends program.
   end
  if @stuff_in_intestine >= 10
     @stuff_in_intestine = 0
     puts "whoops, #{@name} had an accident!"
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
    puts "#{@name} does the potty dance"
  end
 end
end

puts "Welcome to the Dragon creator"
puts "first of all, what shall we call your fine beast?"

   name =    gets.chomp
   dragon =  Dragon.new name

puts "You need to feed, walk, play and put #{name.capitalize} to bed"
while true
puts "What should you two do next  \n"

  answer = gets.chomp.downcase
if answer == "feed"
  dragon.feed
elsif answer == "walk"
   dragon.walk
elsif answer == "play"
   dragon.toss
elsif answer == "put to bed"
   dragon.put_to_bed
elsif answer == 'rock'
   dragon.rock
elsif answer == 'exit'
  puts "#{name.capitalize} misses you already!"
  exit
else
   puts "Sorry, #{name.capitalize} doesn't understand that"
   puts "He will only understand 'feed', 'walk', 'play', 'rock' or 'put to bed'."
   puts "type 'exit' to leave your Dragon in peace"
end
end
