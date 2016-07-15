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
    puts "I hear you wanna cheat...what number between 1 and 6 do you need??"
    @number_showing = gets.chomp.to_i
    if @number_showing > 6
      puts "Nope - thats not possible. Choose a number between 1-6"
      cheat
    else
      "pssst - the number showing is #{@number_showing}"
    end
  end
end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

puts Die.new.showing

puts die.cheat
