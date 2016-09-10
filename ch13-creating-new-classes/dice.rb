class Die

def cheat num
  if num <=6
    @number_showing = num
  else
    puts "That is not a valid die number."
    puts "Rolling again..."
    roll
  end
end

def initialize
  roll
end

def roll
  @number_showing = 1 + rand(6)
end

def showing
  @number_showing
end

end
