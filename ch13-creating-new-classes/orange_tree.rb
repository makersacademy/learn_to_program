class OrangeTree

  def initialize
    @orange_count = 0
    @height = 0
    @age = 0
  end

  def height
    @height
  end

  def age
    @age
  end

  def one_year_passes
    if @age < 15
      @age = @age + 1
      @height = @height + 1
      fruit
      puts "This year your tree grew to #{@height}m tall, and produced #{count_the_oranges} oranges."
    elsif @age < 50
      @age = @age + 1
      fruit
      puts "This year your tree grew to #{@height}m tall, and produced #{count_the_oranges} oranges."
    else
      death
    end

  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    puts "That is one delicious orange!"
    @orange_count = @orange_count - 1
  end

  private
  def death
    puts "The tree is too old and dies."
    exit(0)
  end

  def fruit
    if @age > 3
      @orange_count = 5 * @age
    end
  end
end

