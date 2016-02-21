class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
  end

  def height
      @height
  end

  def count_the_oranges
    @fruit
  end

  def pick_an_orange
      if orange_count <= 0
        return "No more oranges"
      else
        @orange_count -= 1
        return "jheez these are good"
      end
  end

  def one_year_passes
      @orange_count = 0
      if @age >= 10
        puts "DEAD Yo"
        exit
      else
        @age += 1
        @height + (20/@age)
        @orange_count +(1*@age) unless @age <= 3
      end
  end

end
