class OrangeTree
  def initialize type
    @type = type
    @height = 0
    @age = 0
    @age_before = 0
    @total_amount_of_fruit_this_year = 0
    @total_amount_of_fruit = 0
    @picked = 0
    @check = 0

    puts "#{type} has been planted and is growing"

  end

  def picks_fruit
    puts "You picked an orange"
    puts "You ate it"
    disgusting = "It was disgusting!"
    awesome = "It tasted incredible!"
    lottery = rand(2)
    if lottery == 0
      puts disgusting
    elsif lottery == 1
      puts awesome
    end
    @total_amount_of_fruit -= 1
    puts "There are #{@total_amount_of_fruit} oranges left"
    one_year_passes
    @picked += 1
  end

  def count_oranges
    puts "There are #{@total_amount_of_fruit} oranges at the moment"
    one_year_passes
  end





  def produce_fruit

    if @age <= 10
      "This year in total I have produced five pieces of fruit"
      @total_amount_of_fruit_this_year = @total_amount_of_fruit_this_year += 5
      @total_amount_of_fruit = @total_amount_of_fruit += 5
      one_year_passes
    elsif @age > 10 && @age <= 15
      "This year in total I have produced twenty pieces of fruit"
      @total_amount_of_fruit_this_year = @total_amount_of_fruit_this_year += 20
      @total_amount_of_fruit = @total_amount_of_fruit += 20
      @one_year_passes
    elsif @age > 15 && @age <= 20
      "This year in total I have produced ten pieces of fruit"
      @total_amount_of_fruit_this_year = @total_amount_of_fruit_this_year += 10
      @total_amount_of_fruit = @total_amount_of_fruit += 10
      one_year_passes
    elsif @age > 20 && @age <= 22
      "The tree is starting to wither"
      @total_amount_of_fruit_this_year = @total_amount_of_fruit_this_year += 3
      @total_amount_of_fruit = @total_amount_of_fruit += 3
      one_year_passes
    elsif @age > 22 && @age <= 24
      "No fruit this year :("
      one_year_passes
    end

  end


    private

    def one_year_passes
      @age += 1
      @height += 500
      puts "This tree is a year older. It has produced #{@total_amount_of_fruit_this_year} oranges this year, but #{@picked} have been picked."
      @picked = 0
      @total_amount_of_fruit_this_year = 0
      puts "Currently this tree is #{@height} metres tall and is #{@age} years old"
      puts
      die 

    end

    def die
      if @age >= 25
        puts "This tree has died"
        exit
      end

    end

end

tree = OrangeTree.new 'Seville'
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit
tree.count_oranges
tree.picks_fruit
tree.produce_fruit