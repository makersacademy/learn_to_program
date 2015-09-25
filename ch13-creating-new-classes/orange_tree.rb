class OrangeTree 
  def initialize
    @tree_name = ('A'..'Z').to_a.shuffle[0..4].join
    @age = rand(2..5)
    @height_mod = rand(0.6..1)
    @death = rand(40..60)
    @fruit = 10
    @optimum_age = @death / 2
    @max_fruit_harvest = 1.5*@death
    new_tree
  end

  def death_count
    puts "tree will die in #{@death - @age} years :'("
  end

  def one_year_passes
    @age = @age + 1
    loading
    puts "the tree is now #{@age}"
    fruit
  end

  def height
    if @age < 15
      @height = (@age * 30) * @height_mod
    else
      @height = 460 * @height_mod
    end
    puts "the tree is #{@height}cm"

  end


  def count_the_oranges
    puts "there are #{@fruit} oranges left"
  end

  def pick_an_orange
    x = @fruit > 1 ? "you ate a chilli instead" : "no more chillis : ("
    puts x
    @fruit -= 1 
  end


  private
  ################
  def new_tree 
    puts "new seed planted ID:#{@tree_name}."
    puts 'the tree grows'
    loading
    puts "the tree is now #{@age}"
  end

  def loading
    count = 0
    while count < 3
      print '- '
      sleep(1)
      count += 1
    end
      puts "\n"
  end

  def fruit
    if @age < 5
      puts "no fruit yet"
    elsif @age < @optimum_age
      @fuit = @max_fruit_harvest -(@optimum_age - @age)
    else
      @fruit = @max_fruit_harvest
    end
  end

  'This year your tree grew to 9.6m tall, and produced 119 oranges.'
end


x = OrangeTree.new
x.one_year_passes
x.height
x.count_the_oranges
x.one_year_passes
x.death_count
x.height
x.pick_an_orange

x.one_year_passes
x.one_year_passes
x.height
x.death_count
x.pick_an_orange

