class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @death = 10 + rand(30)
    @oranges = 0
    @alive = true

    puts "An orange tree sprouts from the ground..."
  end

  def count_the_oranges
    return "A dead tree has no oranges. :(" unless @alive
    puts "...there are #{@oranges} oranges on the tree..."
    @oranges
  end

  def pick_an_orange
    if @oranges > 0
      @oranges -= 1
      puts "...you pick an orange from the tree..."
      puts "...it tastes delicious..."
    else
      puts "...you are hungry but the tree cannot feed you..."
    end
    return 'A dead tree has nothing to pick. :(' unless @alive
    @oranges
  end

  def height
    return "A dead tree is not very tall. :(" unless @alive
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
    @oranges = (@height * 15 - 25).to_i if @height > 2
    if @height > 10.1
      if @alive == true
        puts "...#{@age} years have passed since the orange tree was planted..."
        puts "...the orange tree has died."
        @alive = false
        return "Oh, no! The tree is too old, and has died. :("
      else 
        return 'A year later, the tree is still dead. :('
      end
    else
      return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
    end
  end
end
