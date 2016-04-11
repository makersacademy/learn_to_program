class OrangeTree
  def initialize 
    @height = 0
    @orange_count = 0
    @living = true
  end

  def height 
    if @living 
      @height
    else
      puts 'The tree has grown old and died.'
    end
  end

  def count_the_oranges
    if @living 
      @orange_count 
    else
      puts 'The tree has died and has no oranges.'
    end
  end

  def one_year_more
    if @living
      @height = @height + 0.5
      @orange_count = 0

      if @height > 5 
        @living = false
        puts 'The tree is too old and is dying.'
      elsif @height > 1
        @orange_count = (@height * 100 - 50).to_i
        puts "The tree grew #{@height.round(1)} metres and yielded #{orange_count} oranges."
      else
        puts "Your tree is still a baby."
      end
    else
      puts 'The tree is dead.'
    end
  end

  def pick_an_orange
    if @living
      if @orange_count > 0
        @orange_count = @orange_count - 1
        puts 'You picked an orange.'
      else
        puts 'There are no oranges to pick.'
      end
    else
      puts 'The tree is dead, and yields no fruit.'
    end
  end
end
