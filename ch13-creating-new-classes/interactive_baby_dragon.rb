class Dragon

  def initialize name
    @name     =  name
    @asleep   = false
    @in_belly =    10
    @in_colon =     0

    p "Behold, #{@name}!"
  end

  def feed
    puts "Feeding #{@name}..."
    @in_belly = 10
    time_passes
  end

  def walk
    p "Walking #{@name}..."
    @in_colon = 0
    time_passes
  end

  def put_to_bed
    p "Puting #{@name} to bed..."
    @asleep = true
    3.times do
      time_passes if @asleep
      p "Zzzz"    if @asleep
    end
    if @asleep
      @asleep = false
      p "#{@name} is waking up..."
    end
  end

  def toss
    p "Tossing #{@name} up in the air...!"
    time_passes
  end

  def rock
    p "Rocking #{@name} to and fro...!"
    @asleep = true
    p "#{@name} dozes off..."
    time_passes
    if @asleep
      @asleep = false
      p "...waking when you stop the rock."
    end
  end

  private

  def hungry?
    @in_belly <= 2
  end

  def poopy?
    @in_colon >= 8
  end

  def time_passes
    if @in_belly > 0
      @in_belly -= 1
      @in_colon += 1
    else
      if @asleep
        @asleep = false
        p "#{@name} wakes suddenly!"
      end
      p "#{@name} is STARVING! He eats YOU!"
      exit
    end
    if @in_colon >= 10
      @in_colon = 0
      p "#{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        p "#{@name} wakes suddenly."
      end
      p "#{@name}'s tummy rumbles."
    end
    if poopy?
      if @asleep
        @asleep = false
        p "#{@name} wakes suddenly!"
      end
      p "#{@name} does the potty dance..."
    end
  end

  public
  def play
    p "What would you like to do"
    reply = gets.chomp.downcase
    case reply
    #when # the acceptable input
    when "feed"
      feed
    when "walk"
      walk
    when "rock"
      rock
    when "toss"
      toss
    when "put to bed"
      put_to_bed
    when "exit"
      exit
    else
      "please enter either \"feed\" \"walk\" \"put to bed\" \"rock\" \"toss\" or \"exit\"..."
    end
    play
  end
end
