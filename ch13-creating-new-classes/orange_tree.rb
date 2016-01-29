class OrangeTree

def initialize
@height, @oranges, @alive = 0, 0, true
end

def height
  if @alive
  @height
  else
  'A dead tree is not very tall. :('
  end
end

def count_the_oranges
if @alive
  @oranges
else
  'A dead tree has no oranges. :('
end
end

def one_year_passes
  if @alive
    @height = (@height + 0.4).round(2)
    @oranges = 0
    if @height > 10
      @alive = false
      'Oh, no! The tree is too old, and has died. :('
    elsif @height > 2
      @oranges = (@height * 15 - 25).to_i
      "This year your tree grew to #{@height}m tall," +
      " and produced #{@oranges} oranges."
    else
      "This year your tree grew to #{@height}m tall," +
      " but is still too young to bear fruit."
    end
  else
    'A year later, the tree is still dead. :('
  end
end

def pick_an_orange
  if @alive
    if @oranges > 0
      @oranges -= 1
      'You pick a juicy, delicious orange!'
    else
      'You search every branch, but find no oranges.'
    end
  else
    'A dead tree has nothing to pick. :('
  end
end
end


=begin
In the below version, when the tree dies, the program is exited:

class OrangeTree

def initialize
@height, @age, @oranges = 0, 0, 0
end

def height
  puts @height
end

def one_year_passes
  @age += 1
  @height += 10
  if @age >= 3
    @oranges = 2*@age
  end
  if @age >= 10
    puts "Tree dies"
    exit
  end
end


def count_the_oranges
  puts @oranges
end

def pick_an_orange
return "No more oranges this year" if @oranges == 0
  @oranges -= 1
  puts "Lovely."
end



end

=end
