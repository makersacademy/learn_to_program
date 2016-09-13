class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{@name} is born"

  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "Lets go for a walk..."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed. "
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
    if @asleep
      puts "#{@name} snores"
    end
  end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up"
    end
  end

  def toss
    puts "you toss #{@name}"
    passage_of_time
  end

  def rock
    puts "You rock #{@name} to sleep"
    @asleep = true
    passage_of_time
    if @asleep
      @asleep = false
      puts "#{@name} wakes up again"
    end
  end

  private
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >=8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly -1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep  = false
        "He wakes up!"
      end
      puts "#{@name} is starving, he ate you"
      exit
    end

    if @stuff_in_intestine >=10
      @stuff_in_intestine= 0
      puts "Whoops, he had an accident"
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "AWAKE"
      end
      puts "#{@name}'s stomach growls'"
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "AWAKE"
      end
      puts "#{@name} is desperate"
  end
end
end

puts "Name?"
name = gets.chomp
pet = Dragon.new name

while true
  puts "Commands: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp
  if command == 'exit'
    exit
  elsif pet.respond_to?(command)
    pet.send command
  else
    puts "What"
  end
end
