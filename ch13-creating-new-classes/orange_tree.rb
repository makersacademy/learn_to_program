class OrangeTree

  def initialize
    @alive    = true
    @height = 0
    @oranges  = 0
  end

  def height
    if @alive
      @height.round(1)
    else
      "It's dead mate..."
    end
  end

  def one_year_passes
    if @alive
      @height += 0.4
      @oranges = 0
      if height > 10 && rand(2) > 0
        @alive = false
        "ya tree died mate..."
      elsif height > 2
        @orange_count = (@height * 15 - 25).to_i
        "Your tree made it to #{@height} meters tall this year
        and produced a whopping #{@orange_count} oranges! Woohooooo!!!!"
      else
        "Your tree is only #{@height} meters tall- fruit baring trees have to be at least two..."
      end
    else
      "Still dead mate..."
    end
  end

  def count_the_oranges
    if @alive
      @oranges
    else
      "It's dead mate..."
    end
  end

  def pick_an_orange
    if @alive
      if oranges > 0
        @oranges -= 1
        puts "mmmm- delish....."
      else
        puts "sorry boss- no oranges....."
      end
    else
      "Sorry mate- ya tree's dead... and aint got no oranges..."
    end
  end

end
