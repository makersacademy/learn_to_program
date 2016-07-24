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
    @number_showing = @number_chea
  end

  def showing
    @number_showing
  end

end

puts Die.new.showing
puts Die.new.cheat
