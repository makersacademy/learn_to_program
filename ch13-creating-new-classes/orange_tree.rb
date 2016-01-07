class OrangeTree
  def initialize
    @height = rand(5)
    @age = 0
    @oranges = 0
    count_the_oranges
  end

  def count_the_oranges
    if @oranges > 0
      puts "You have #{@oranges} on your tree, would you like to pick one?"
      #to make this interactive remove #
      #answer = gets.chomp
      #if answer.downcase.include? "yes"
      #  pick_an_orange
      #else
      #  one_year_passes
      #end
    else
      puts "There are no oranges on your tree this year."
      one_year_passes
  end

  def pick_an_orange
    if @oranges > 1
      @oranges -= 1
      puts "You pick a delicious looking orange, peel and eat it. Mmmm vitamin C goodness!"
    elsif @oranges == 1
      puts "The last orange of the year, you pick it from the tree, peel and eat it. Mmmm, why is the last one always the most delicious?"
    else
      puts "There are no more organges this year :("
      one_year_passes
  end


  private

  def death?
    #after a certain number of years the tree dies
    if @age >= 25
      puts "The tree is old and dies afer a happy life of sunshine and soil. It will grow no more oranges."
      exit
    end
  end

  def one_year_passes
    puts "Autumn changes to Winter and your tree is dark and bare. Before you know it the seasons turn again and it is Spring!"
    #ages the tree one year
    @age += 1
    puts "Your tree is now #{@age} years old"
    #tree grows taller
    @height += 1
    puts "It is #{@height} metres tall"
    #all unpicked oranges fall off the tree. reset orange count to 0
    @oranges = 0
    oranges?
    death?
    count_the_oranges
  end

  def oranges?
    #after a while the tree should produce fruit, older trees produce more fruit than younger fruit up to a point and then decrease.
    if @age > 4 && @age < 20
      @oranges = @age + 5
    elsif @age >= 20
      @oranges = @age - (@age/10)
    else
      @oranges = 0
    end
  end

end

tree = OrangeTree.new
tree.pick_an_orange
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
