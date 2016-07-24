class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def cheat
    puts "Pssst, what number do you want to show (1-6)?"
    @number_cheat = gets.chomp
    if (@number_cheat.to_i > 6)
      puts "Hey! There are only six sides on this dice. Try again!"
      self.cheat
    elsif (@number_cheat.to_i < 1)
      puts "Hey! What world do you live in? Try again!"
      self.cheat
    else
      @number_showing = @number_cheat
    end
  end

  def showing
    @number_showing
  end

end

puts Die.new.showing
puts Die.new.cheat
