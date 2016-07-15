# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @tree = 'orange tree'
    @height = 0 #it starts out as a tiny sapling
    @age = 0
    @orangeCount = 0
  puts 'a new ' + @tree + ' is planted'
  end

  def height
    return @height
  end

  def count_the_oranges
    return @orangeCount
  end

  def age
    puts 'your tree is ' + @age.to_s + ' years old.'
  end


  def one_year_passes
    @height = @height.round(1) + 0.4
    @age = @age + 1

    if @age >= 25
      puts 'Oh, no! The tree is too old, and has died. :('
      exit
    else
      if @age.to_i >= 5 #if the tree is 2 or more then each year it will produce 10 times its age in fruit
        @orangeCount = (@height * 15 - 25).to_i
      else
        @orangeCount = 0
      end
    end
    return "This year your tree grew to " + @height.to_s + "m tall, and produced " + @orangeCount.to_s + " oranges."

  end

  def pick_an_orange
    if @orangeCount > 0
      @orangeCount = @orangeCount - 1
      puts "Mmm...Delicious!"
    else
      puts "No more oranges left!"
    end
  end
end
