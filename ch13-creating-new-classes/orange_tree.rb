=begin

class OrangeTree
  # your code here

  def initialize(name, age_years = 0)
    @name = name
    @height_feet = (age_years < 5 ? age_years * 2 : (age_years - 5) + 10 )
    @age_years = age_years
    @orange_count = (age_years > 5 ? (age_years - 5) * 15 : 0)

  end

  def height
    return @height_feet
  end

  def oneYearPasses
    @height_feet += (@age_years < 5 ? 2 : 1)
    @age_years += 1
    if @age_years > 20
      puts "The old tree has seen many seasons, but this was its last."
      exit
    elsif @age_years > 5
      @orange_count = (@age_years - 5) * 15
    end
  end

  def countTheOranges
    return @orange_count
  end

  def pickAnOrange
    if @orange_count == 0
      puts "There are no more oranges to pick this year. Bloody thieves."
    else
      @orange_count -= 1
      puts "Mmm yummy. The orange reminds you of your youth, and how much you hate scurvy."
    end
  end

end


my_tree = OrangeTree.new("Betty")
7.times {my_tree.oneYearPasses}

puts my_tree.countTheOranges
my_tree.pickAnOrange

puts my_tree.countTheOranges

=end

# Chris Pine's code, to pass rspec. After I fixed it a bit :|

class OrangeTree
  def initialize
    @height       = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height
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
      @height = (@height + 0.4).round(1)
      @orange_count = 0 # old oranges fall off

      if @height > 10 && rand(2) > 0
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," + " and produced #{@orange_count} oranges."
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