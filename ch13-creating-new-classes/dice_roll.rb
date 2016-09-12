class Die

  def initialize
    roll
    cheat
    showing
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def cheat
    puts "enter number:"
    @number_showing = gets.chomp.to_i
  end

  def showing
    puts @number_showing
  end

end

die = Die.new
