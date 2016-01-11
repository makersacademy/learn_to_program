class OrangeTree
  def initialize
    @age = 0
    @fruit = 0
    @height = 0
    @dead = false
    puts "You plant an orange tree and wait."
  end

  def one_year_passes
    if @dead == true
     return "A year later, the tree is still dead. :("
    end

    @age += 1
    @height += 0.4 #add max height and make height change
    @fruit += 5 #if @age > 5

    if @age > 25
      @dead = true
      "Oh, no! The tree is too old, and has died. :("
    else
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@fruit} oranges."
    end
  end

  def height
    if @dead == false
      @height.round(1)
    else
      "A dead tree is not very tall. :("
    end
  end

  def age
    if @dead == false
     "Your tree is #{@age} years old now."
    else
     "A dead tree is not very old. :("
    end
  end

  def pick_an_orange
    if @dead == true
      return "A dead tree has nothing to pick. :("
    end

    if @fruit == 0
      "You have no oranges :("
    else
      "You picked an orange. Mmmm delicious!"
        @fruit = @fruit - 1
    end
  end

  def count_the_oranges
    if @dead == true
      return "A dead tree has no oranges. :("
    end
    if @fruit > 0
      @fruit
    else
     "You have no oranges.."
    end
  end
end
