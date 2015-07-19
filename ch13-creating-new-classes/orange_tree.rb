class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @orange_count = 0
  end
  def height
    puts "Your Orange tree is #{@height}m tall!"
    @height
  end
  def one_year_passes
    if @age < 60
      @age += 1
    else
      puts "Your lovely orange tree has died, on its 15th birthday."
      exit
    end
    @orange_count = 0
    orange_growth
    @height = (@height + 0.4).round(2)
    return "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
  end
  def pick_an_orange
    if @orange_count == 0
      puts "All the oranges are gone this year!"
    else
      @orange_count -= 1
      puts "Gosh, that's a delicious looking orange you've picked!"
    end
  end
  def orange_growth
    if @age > 19
      @orange_count = 119
    elsif @age > 9
      @orange_count = 30
    elsif @age > 4
      @orange_count = 15
    end
  end
  def count_the_oranges
    if @orange_count == 1
      puts "Your tree has only got #{@orange_count} orange!"
    elsif @orange_count == 0
      puts "Your tree has no oranges on it at all :("
    else
      puts "Your tree has got #{@orange_count} oranges!"
    end
    @orange_count
  end
end