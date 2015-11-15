# your code here
class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # full
    @stuff_in_intestine = 0 #he doesnt need to go

    puts "#{name} is born"
  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "you walk #{@name}"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "you put #{@name} to bed"
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling room with smoke"
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  def toss
    puts "you toss #{@name} up into the air"
    puts "he giggles, which singes your eyebrows"
    passage_of_time
  end
  def rock
    puts "you rock #{@name} gently"
    @asleep = true
    puts "he briefly dozes off"
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop"
    end
  end

  private # internal to the object
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >=8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "he wakes up suddenly"
      end
      puts "#{@name} is starving. In desperation, he ate YOU"
      exit
    end

    if @stuff_in_intestine >= 10 @stuff_in_intestine = 0
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

puts 'name yout baby dragon'
name = gets.chomp
pet = Dragon.new(name)

while true
  puts
  puts 'enter on of these commands: feed, toss, walk, rock, put to bed, exit'
  command = gets.chomp

  pet.feed if command == 'feed'
  pet.toss if command == 'toss'
  pet.walk if command == 'walk'
  pet.put_to_bed if command = 'put to bed'
  pet.rock if command = 'rock #{name}'
  if command == 'exit'
  exit
  else
    puts 'command not recognised'
  end
end 
