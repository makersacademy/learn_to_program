class OrangeTree

  def initialize
    @alive = true
    @height = 0
    @age = 0
    @oranges = 0
  end

  def height
    @height
  end

  def count_the_oranges
    @oranges
  end

  def pick
    if @alive
      @oranges -= 1
      p "You picked an orange!"
    else
      p @oranges
    end
  end

  def one_year_passes
    @age += 1
    @height += 2
    if @age > 25
      @alive = false
      @oranges = "The tree is dead!"
      p "Tree is ded."
    elsif @age < 4
      p "no oranges yet"
    else
      @oranges = rand(20..55)
    end
  end

end
