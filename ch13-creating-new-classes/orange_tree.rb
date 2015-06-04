class OrangeTree

  def initialize
    @height = 0
    @oranges = 0
    @alive = true
    @age = 0

    puts "The orange tree has been planted..."
  end

  def height
  	if @alive
      @height
    else 
      puts "The tree has died already :("
    end
  end
   

 

  def one_year_passes
    if @alive
      @age = @age + 1
      puts "The orange tree is now #{@age} years old."
    
      @height = @height + 1
      
      @oranges = 0

      if @height > 12
      	@alive = false
      	puts "Oh no the orange tree has died :("
      elsif @height > 4
      	@oranges = @oranges + @height * @height
      	puts "This year the orange tree grew to #{@height}m tall, and produced #{@oranges} oranges!"
      else
      	puts "This year the orange tree gre to #{@height}m tall but is not mature enough yet to grow any fruit."
      end
    else
      puts "A year later, the tree is still dead :("
    end
  end

  def count_the_oranges
  	if @alive
      puts "There are now #{@oranges} oranges on the orange tree."
    else 
      puts "The tree has already died, so there are no oranges :("
    end
  end

  def pick_an_orange
    if @alive
      if @oranges >= 1
        @oranges = @oranges - 1
        puts "Mmm what a lovely orange that was"
      else
        puts "There are no oranges to pick now..."
      end
    else 
      puts "The tree is still dead, so no oranges :( "  
    end
  end

end

ot = OrangeTree.new
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
puts(ot.count_the_oranges)
