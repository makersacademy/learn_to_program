class OrangeTree
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
      if @height > 10 && rand(2) > 0
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

class OrangeTree_me
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
  end

  def height
    @height = @age*5
    if @age > 200
      puts "The tree is dead."
    else
    puts @height
    end
  end

  def one_year_passes
    if @age > 24
    puts "The tree is dead."
    else
    @age +=1
      if @age < 50
        @orange_count = 10*@age
      else
        @orange_count = 500
      end
    end
  end

  def count_the_oranges
    if @age >200
      puts "The tree is dead."
    else
    puts @orange_count
    end
  end

  def pick_an_orange
  if @orange_count> 0
    @orange_count -=1
  end
  end
end
