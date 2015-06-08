class OrangeTree
  def initialize
    @age = 0
    @height = 0.0
    @oranges = 0
  end
  
  def height
    return @height
  end
  
  def one_year_passes
    @age += 1
    @height = @height.round(1) + 0.4
    if @age == 60
      tree_dies
    end
    if @age > 2 
      @oranges = (@height * 15 - 25).to_i
    end
    return "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
  end
  
  def count_the_oranges
    return @oranges  
  end
  
  def pick_an_orange
    if @oranges > 0 
      return "Yum that was delicious!"
      @oranges -= 1
    else
      return "There are no more oranges to pick this year"
    end
  end
  
  private
  def tree_dies
    @alive = false
    puts "Oh no, the tree died!"
  end
end

