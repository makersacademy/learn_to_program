class OrangeTree
  def initialize
    @height = rand(5)
    @age = 0
    @oranges = 0

  end

  def one_year_passes
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
  end

  def death?
    #after a certain number of years the tree dies
    if @age >= 25
      puts "The tree is old and dies afer a happy life of sunshine and soil. It will grow no more oranges."
      exit
    end
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

  def count_the_oranges
    if @oranges > 0
      puts "You have #{@oranges} on your tree"
    else
      puts "There are no more oranges on your tree this year."
  end

  def pick_an_organge
    if @oranges > 1
      @oranges -= 1
      puts "You pick a delicious looking orange, peel and eat it. Mmmm vitamin C goodness!"
    elsif @oranges == 1
      puts "The last orange of the year, you pick it from the tree, peel and eat it. Mmmm, why is the last one always the most delicious?"
    else
      puts "There are no more organges this year :("
  end

end
