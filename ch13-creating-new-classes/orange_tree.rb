#copied in CP version, as mine works, but doesnt use the same values as CP
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
      if @height > 10.1 #&& rand(2) > 0
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




#version that returns numbers, without interaction
=begin
class OrangeTree
  def initialize
    @height = 50
    @age = 0
    @orange_count = 0
    @jump = 1
    #interaction
  end

  def height
    return @height
    #interaction
  end
  def age
    return @age
    #interaction
  end
  def one_year_passes(value=1)
    @age +=value
    if @age >25
      puts "The orange tree fades silently in as it is now old"
      exit
    end
    @height += 10 * value
    @orange_count = 0
    new_oranges
    #interaction
  end

  def new_oranges
    if @age<5
      @orange_count = 0
    else
      @orange_count = @age*5
    end
  end

  def count_the_oranges
    return @orange_count
    #interaction

  end

  def pick_an_orange
    #number of oranges
    if @orange_count >0
      @orange_count -= 1
      puts "That was an amazing orange"
    else
      puts "There were no oranges on the tree"
    end
    #interaction
  end

end

=end



#original interactive version
=begin
class OrangeTree
  def initialize
    @height = 50
    @age = 0
    @orange_count = 0
    @jump = 1
    interaction
  end

  def height
    puts @height
    interaction
  end
  def age
    puts @age
    interaction
  end
  def one_year_passes(value=1)
    @age +=value
    if @age >25
      puts "The orange tree fades silently in as it is now old"
      exit
    end
    @height += 10 * value
    @orange_count = 0
    new_oranges
    interaction
  end

  def new_oranges
    if @age<5
      @orange_count = 0
    else
      @orange_count = @age*5
    end
  end

  def count_the_oranges
    puts @orange_count
    interaction

  end

  def pick_an_orange
    #number of oranges
    if @orange_count >0
      @orange_count -= 1
      puts "That was an amazing orange"
    else
      puts "There were no oranges on the tree"
    end
    interaction
  end

  def interaction
    interactions = %w(count_the_oranges pick_an_orange one_year_passes more_years exit height age)
    puts "What do you want to do: count_the_oranges, pick_an_orange, height, one_year_passes, age, more_years, exit?"
    action = gets.chomp!.to_s
    unless interactions.include?(action.to_s)
      puts "Don't understand what you mean with '#{action}', please try again"
      interaction
    end
    if action.to_s == "more_years"
      puts "How many years would you like to skip?"
      @jump = gets.chomp!.to_i
      one_year_passes(@jump)
    end
    exit if action.to_s == "exit"
    self.send(action)
  end
end

tree = OrangeTree.new

=end