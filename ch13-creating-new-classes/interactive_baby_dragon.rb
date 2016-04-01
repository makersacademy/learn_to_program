class Dragon
  def initialize name
    @name = name.capitalize
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "\n#{@name} is born."
    self.interact
  end

  def interact
    commands = {"feed" => method(:feed),
                "walk" => method(:walk),
                "put to bed" => method(:put_to_bed),
                "toss" => method(:toss),
                "rock" => method(:rock),
                "rename" => method(:rename),
                "exit" => method(:exit)}

    puts
    puts "What would you like to do?"
    commands.each_key { |key| puts key.capitalize }
    puts

    command = gets.chomp.downcase
    puts

    if commands.keys.include? command
      commands[command].call
    else
      puts "That is not a valid command\n\n"
      interact
    end
  end

  private
  attr_accessor :name, :asleep, :stuff_in_belly, :stuff_in_intestine

  def feed
    puts "You feed #{@name}."
    self.stuff_in_belly = 10
    passage_of_time
    interact
  end

  def walk
    puts "You walk #{@name}."
    self.stuff_in_intestine = 0
    passage_of_time
    interact
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    self.asleep = true

    3.times do
      passage_of_time if @asleep
      puts "#{@name} snores, filling the room with smoke." if @asleep
    end

    if @asleep
      self.asleep = false
      puts "#{@name} wakes up slowly."
    end

    interact
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
    interact
  end

  def rock
    puts "You rock #{@name} gently."
    self.asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      self.asleep = false
      puts '...but wakes when you stop.'
    end
    interact
  end

  def rename
    puts "What would you like to call #{@name}?"
    new_name = gets.chomp.capitalize
    puts "#{@name} is now called #{new_name}"
    self.name = new_name
    interact
  end

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def toggle_sleep
    self.asleep = !@asleep
  end

  def passage_of_time
    if @stuff_in_belly > 0
      self.stuff_in_belly -= 1
      self.stuff_in_intestine += 1
    else
      if @asleep
        toggle_sleep
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving!  In desperation, he ate YOU!"
      exit
    end

    if @stuff_in_intestine >= 10
      self.stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        toggle_sleep
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        toggle_sleep
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

puts "Hello, what would you like to call your new dragon?"
Dragon.new(gets.chomp)