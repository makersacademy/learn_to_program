class OrangeTree
  def initialize
    @age = 0
    @height = 2
    @oranges = 0
  end

  def height
    "The tree is #{@height} feet tall."
  end

  def one_year_passes
    @age += 1
    "The tree has died." if @age > 10

    @height += 2
    
    if @age < 4
      "The tree is still too young to produce fruit."
    else
      "#{@oranges} oranges from last season rotted and fell away..."
      
      newOranges = (1 + rand(10)) * (1.2 * @age).to_i
      "... but the tree grew #{newOranges} new oranges."
      
      @oranges =  newOranges - @oranges
      count_the_oranges
    end
  end

  def count_the_oranges
    "The tree has #{@oranges} oranges."
  end

  def pick_an_orange
    if @oranges > 0
      @oranges -= 1
      "That orange was delicious!"
      count_the_oranges
    else
      "There aren't any oranges to pick."
    end
  end
end