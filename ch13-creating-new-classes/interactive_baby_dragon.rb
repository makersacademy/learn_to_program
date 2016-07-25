class BabyDragon

  def initialize
    @name = ''
    @distance = 0
    @fed = false
    @countFeeds = 0
    @gender = ''
    self.start
  end

  def start
    puts "A baby dragon is born! But is it a boy or a girl?"
    puts
    answer = gets.chomp
    if answer == "girl"
      puts "Well all dragons are boys ... try again!"
      puts
      self.start
    else
      @gender = "boy"
    end
    puts "Sweet! It's a #{@gender}. What do you want to call him?"
    puts
    @name = gets.chomp.capitalize
    puts
    puts "Welcome to the world #{@name}! Aren't you the cutest dragon?!"
    puts
    self.activity
  end

  def activity
    puts "What do you want the little guy to do? #{@name} can walk or he can eat."
    puts
    answer = gets.chomp.downcase
    if answer == "walk"
      self.walk
    elsif answer == "eat"
      self.feed
    else
      puts "Sorry, he can't #{answer} right now. Maybe in a few years."
      puts
      self.activity
    end
  end

  def walk
    puts "Okay, how far should he walk? A little? Far? Insanely far?"
    answer = gets.chomp.downcase
    howFar = 0
    if answer == "a little"
      howFar = rand(100)
      @distance += howFar
    elsif answer == "far"
      howFar = rand(10..1000)
      @distance += howFar
    elsif answer == "insanely far"
      howFar = rand(1000..10000)
      @distance += howFar
    else
      puts "Sorry, I didn't get that."
      self.walk
    end
    puts "..." * howFar
    puts "Wow, he just walked #{howFar} feet and has now covered at total of #{@distance}. Pretty good for the little guy!"
    self.activity
  end

  def feed
    countFeeds = 0
    puts "Okay, what shall we feed him? (1) Grass? (2) Flamed chicken? (3) Ice cream?"
    puts
    answer = gets.chomp.to_i
    if answer == 1
      puts "Ew, he hates grass. He'd rather drink a kale smoothie!"
      puts
      self.feed
    elsif answer == 2
      @fed = true
      @countFeeds += 1
      puts "Yum Yum Yum. He LOVES that. Give him some more"
      puts
      if @countFeeds < 6
        self.feed
      else
        puts "Ok, that's quite enough food. More chicken and he'll explode!"
        puts
      end
    else
      if @countFeeds == 0
        puts "Oh wow, lucky guy is getting some desert before his main meal. Mum won't be happy."
        puts
        @countFeeds += 1
        @fed = true
        self.feed
      else
        @countFeeds += 1
        puts "Mmmmhhh, thanks. He loves ice cream."
        puts
        if @countFeeds < 6
          self.feed
        else
          puts "Ok, that's quite enough food. More ice cream and he'll explode!"
          puts
        end
      end
    end
    self.activity
  end

end

BabyDragon.new
