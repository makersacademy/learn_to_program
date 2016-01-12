class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @no_of_oranges = 0

    puts "An orange tree has been planted"
  end

  def height
    if @age < 26
      puts "The year your tree grew to #{@height}m tall"
      return @height.round(1)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def age
    if @age == 1
      years = "year"
    else
      years = "years"
    end
    puts "The tree is #{@age} #{years} old"
  end

  def count_the_oranges
    if @age < 26
      puts "The tree has #{@no_of_oranges} oranges"
      return @no_of_oranges
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @age < 26
      if @no_of_oranges == 0
        puts "There are no oranges left to pick"
      else
        @no_of_oranges = @no_of_oranges - 1
        puts "You pick a delicious orange"
      end
    else
      return "A dead tree has nothing to pick. :("
    end
  end

  # private

  def one_year_passes
    @age = @age + 1
    @height = @height + 0.4
    @no_of_oranges = 0 #Oranges fall off
    if @age > 7 #Oranges grow
      @no_of_oranges = 6 * @age - 25 #Oranges grow (more for older trees)
    end
    @no_of_oranges
    if @age == 26
      return "Oh, no! The tree is too old, and has died. :("
    elsif @age > 26
      return "A year later, the tree is still dead. :("
    end
    return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@no_of_oranges} oranges."
  end

end
