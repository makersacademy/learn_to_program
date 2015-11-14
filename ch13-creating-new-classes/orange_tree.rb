class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @death = 10 + rand(30)
    @oranges = 0

    puts "An orange tree sprouts from the ground..."
  end

  def count_the_oranges
    puts "...there are #{@oranges} oranges on the tree..."
    @oranges
  end

  def pickAnOrange
    if @oranges > 0
      @oranges -= 1
      puts "...you pick an orange from the tree..."
      puts "...it tastes delicious..."
    else
      puts "...you are hungry but the tree cannot feed you..."
    end
    @oranges
  end

  def height
    puts"...the tree is #{@height}m tall..."
    @height.round(1)
  end

  def one_year_passes
    puts "...one year passes..."
    @age += 1
    puts "...the tree grows..."
    @height += 0.4
    puts"...and it's fruit is replenished..."
    @oranges = 0
    if @age > @death
      puts "...#{@age} years have passed since the orange tree was planted..."
      puts "...the orange tree has died."
      'Oh, no! The tree is too old, ang had died. :('
    elsif @height > 2
      @oranges = (@height * 15 - 25).to_i
    end
    "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
  end

end
