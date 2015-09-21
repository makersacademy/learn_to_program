class OrangeTree
  def initialize
	@height = 1
	@orange_count = 0
	@age = 0
  end
  def height
    puts "The Orange Tree is #{@height}m tall."
  end
  def one_year_passes
    @orange_count = 0
    if @age > 10
      puts "The tree is old and dies"
      exit
    elsif @age > 2
      @orange_count += (rand(0)*@age).round(0)
    else
    end
    @height += rand(1..20)/10.0
    @age += 1; puts "Tree is #{@age} years old"
  end
  def count_the_oranges
    puts "The Orange Tree has #{@orange_count} oranges this year."
  end
  def pick_an_orange
    if @orange_count > 0
      puts "You pick an orange. It's delicious!"
      @orange_count -= 1
    else
      puts "Sorry, there are no more oranges this year!"
    end
  end
end

ot = OrangeTree.new
ot.height
ot.count_the_oranges
ot.pick_an_orange
ot.one_year_passes
