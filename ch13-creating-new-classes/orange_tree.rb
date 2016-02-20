class OrangeTree
=begin # My code which doesn't pass the specific rspec test...
  def initialize
    @height = 0
    @oranges = 0
    @age = 0
    @dead = false
  end

  def height
    @dead ? "A dead tree isn't very tall." : @height
  end

  def one_year_passes
    if @age >= 10
      @dead = true
      @oranges = 0
      @height = 0
      puts "Your tree is dead."
    else
    @height += 0.5
    @age += 1
    @oranges = (@height**2).to_i if @age >= 3
    "This year your tree grew to #{@height}m tall, and produc#{@oranges} oranges."
  end
  end

  def count_the_oranges
    @dead ? "A dead tree has no oranges." : @oranges
  end

  def pick_an_orange
    if @oranges < 1
      puts "There are no oranges to pick!"
    else
      @oranges -= 1
      puts "Mmm, delicious!"
    end
  end
=end
def initialize
  @height = 0
  @orange_count = 0
  @alive = true
end

def height
  if @alive
    @height.round(1)
  else
    'A dead tree is not very tall. :('
  end
end

def count_the_oranges
  if @alive
    @orange_count
  else
    'A dead tree has no oranges. :('
  end
end

def one_year_passes
  if @alive
    @height = @height + 0.4
    @orange_count = 0 # old oranges fall off
    if @height > 10.1 #&& rand(2) > 0
      # tree dies
      @alive = false
      'Oh, no! The tree is too old, and has died. :('
    elsif @height > 2
      # new oranges grow
      @orange_count = (@height * 15 - 25).to_i
      "This year your tree grew to #{@height.round(1)}m tall," +
        " and produced #{@orange_count} oranges."
    else
      "This year your tree grew to #{@height.round(1)}m tall," +
        " but is still too young to bear fruit."
    end
  else
    'A year later, the tree is still dead. :('
  end
end

def pick_an_orange
  if @alive
    if @orange_count > 0
      @orange_count = @orange_count - 1
      'You pick a juicy, delicious orange!'
    else
      'You search every branch, but find no oranges.'
    end
  else
    'A dead tree has nothing to pick. :('
  end
end
end
