class OrangeTree

  def initialize
    @isAlive = true
    @height = 0
    @age = 0
    @numFruit = 0
  end

  def height
    @height
  end

  def one_year_passes
    if @age <= 80

      if @isAlive
        @age = @age + 1
        @height = @height + 0.5
        @numFruit = 0

        if @age > 3
          @numFruit = (@age - 2)
        end

        return
      end

      else
        @isAlive = false
        return 'The tree is dead.'
      end

  end

  def count_the_oranges
    if @isAlive
      return @numFruit
    else
      return 'The tree is dead.'
    end

  end

  def pick_an_orange
    if @isAlive

        if @numFruit > 0
          @numFruit = @numFruit - 1
          return 'I ated it, it was nice.'
        else
          return 'There are no fruit; when I got there the cupboard was bare.'
        end

    else
      return 'The tree is dead.'
    end

  end

end

