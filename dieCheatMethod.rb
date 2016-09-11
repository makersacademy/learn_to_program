class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat
    puts "what number would you like?"
    cheat_number = gets.chomp
    puts "This is the number you would have got #{@number_showing}"
    puts "This is the number you have now #{cheat_number}"
    @number_showing = cheat_number
  end



end

puts Die.new.cheat