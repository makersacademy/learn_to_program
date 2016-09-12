class Dragon

  def initialize
    puts "Please select a name"
    @name = gets.chomp
    @sleep = false
    self.menu
  end

  def feed
    puts "Feeding #{@name}..."
    sleep 2
    puts "MMMM #{@name} is fed!"
  end

  def put_to_bed
    puts "You put #{@name} to bed"
    @sleep = true
  end

  def asleep?
    if @sleep
      puts "The dragon is sleeping"
    end
  end

  def wake
    if @sleep
      @sleep = false
      puts "The dragon is awake!"
    else
      puts "The dragon is already awake!"
    end
  end

  def menu

    puts "What would you like to do with #{@name}"
    puts "Press 1 for feed, 2 for put to bed and three 3 for wake"
    @input = gets.chomp.to_i

    if @input == 1
      self.feed
    elsif @input == 2
      self.put_to_bed
    elsif @input == 3
      self.wake
    end
=begin
    @@commands.each do |number, command|
      if @input == number
        self.(command)
      else
        puts "input not recognized"
      end
    end
=end

    puts "Would you like to leave the dragon? [yes/no]"
    leave = gets.chomp.downcase

    if leave == 'yes'
      exit
    elsif leave == 'no'
      self.menu
    else
      puts "input not recognised, please try again"
      self.menu
    end


  end
end



dragon = Dragon.new
