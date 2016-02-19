class Dragon

  def initialize name
    @alive = true
    @name = name
    @asleep = false
    @stuff_in_belly     = 10
    @stuff_in_intestine =  0

    puts "#{@name} is born!"
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You take #{@name} out for a walk."
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
    puts "You toss #{@name} up in the air."
    puts "#{@name} giggles, which singes your eybrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "#{@name} briefly dozes of..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes up when you stop."
    end
  end

  def alive?
    @alive
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
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "You did not care enough, and #{@name} died of starvation...\nGAME OVER"
      @alive = false
      exit
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

puts ""
puts "Your baby dragon is about to hatch! What would you like to call it?"
name = gets.chomp
pet = Dragon.new "#{name}"

while pet.alive?
  puts ""
  puts "Choose from following actions: Feed, Walk, Bed, Toss, Rock"
  action = gets.chomp.downcase
  if action == "feed"
    pet.feed
  elsif action == "walk"
    pet.walk
  elsif action == "bed"
    pet.put_to_bed
  elsif action == "toss"
    pet.toss
  elsif action == "rock"
    pet.rock
  else
    puts "We did not recognise your choise."
  end
end
