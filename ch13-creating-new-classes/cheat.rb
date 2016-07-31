class Die

def initialize
  roll
end

def roll
  @number_showing = 1 + rand(6)
end

def cheat(n)
  if n>=7
    "Well that's just bad cheating"
  else
    @number_showing = n
  end
end

def showing

@number_showing

end

end

puts Die.new.cheat(6).showing
