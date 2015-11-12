class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
    puts "#{@name} is born."
    ask_what_they_want_to_do
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
    ask_what_they_want_to_do
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
    ask_what_they_want_to_do
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
    ask_what_they_want_to_do
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
    ask_what_they_want_to_do
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
    ask_what_they_want_to_do
  end

private

  def ask_what_they_want_to_do
  correct_responce = false
    while correct_responce != true
    puts
    puts "What would you and little #{@name} like to do? Options are:\n\nFeed\nWalk\nPut to bed\nToss\nRock\n\n"
    @action_to_complete = gets.chomp.downcase
      if ['feed', 'walk', 'put to bed', 'toss', 'rock'].include? @action_to_complete
        correct_responce = true
      else
        puts "Incorrect responce! Try again please."
      end
    end
    convert_action_to_correct_method
  end

  def convert_action_to_correct_method
    case @action_to_complete
    when "feed"       then self.feed
    when "walk"       then self.walk
    when "put to bed" then self.put_to_bed
    when "toss"       then self.toss
    when "rock"       then self.rock
    else
      puts "Error with action!"
      exit
    end
  end

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
    # Move food from belly to intestine.
    @stuff_in_belly = @stuff_in_belly - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
      @asleep = false
      puts 'He wakes up suddenly!'
      end
    puts "#{@name} is starving! In desperation, he ate YOU!"
    exit # This quits the program.
    end

    if @stuff_in_intestine >= 10
    @stuff_in_intestine = 0
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




def get_name_and_create
  puts "Welcome! What would you like to call your new pet baby dragon?"
  first_name = gets.chomp
  puts "#{first_name.upcase}?!? That's not very exciting! Why don't you try again."
  name = gets.chomp
  name.capitalize!
  p name
  p first_name
  if name.upcase == first_name.upcase
    puts "Very well, #{name} it is! Even if it is rubbish.\n"
  else
    puts "Ah yes, #{name}, much more fitting for a dragon!\n"
  end
name
end


pet = Dragon.new(get_name_and_create)
