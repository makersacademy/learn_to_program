class OrangeTree

  @height = 0
  @age = 0
  @fruit = 0

  def height
    return @height
  end

  def one_year_passes
    @height += 100
    @age += 1
    @fruit = (@age-3)**2 if @age > 3
    tree_dies if @age > 50
  end

  def count_the_oranges
    @fruit
  end

  def pick_an_orange
    if @fruit > 0
      @fruit -= 1
      puts "That was delicious."
    else
      puts "No oranges left to pick."
    end
  end

  private

  def tree_dies
    puts "Dead tree."
    exit
  end

end