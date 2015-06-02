class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      puts "Your tree is #{@height}m tall."
    else
      puts "You're tree is sadly no longer alive."
    end
  end

  def oranges
    if @alive
      puts "Your tree has #{@orange_count} oranges at the moment."
    else
      puts "You're tree is sadly no longer alive."
    end
  end

  def pick
    if @alive and (@orange_count > 0)
      puts 'You pick an orange of the tree. "Hmmmmm... delicious!"'
      @orange_count = @orange_count - 1
      puts "There are now #{@orange_count} orange left on the tree."
    elsif @alive and (@orange_count == 0)
      puts "There are no oranges on the tree at the moment."
    else
      puts "You're orange tree is sadly no longer alive"
    end
  end


  def time_passing
    @orange_count = 0
    @height = @height + 0.5
    if @alive and (@height < 10)
      if @height < 2
        puts "You're orange tree is now #{@height}m tall, but it is still"
        puts "too young to bear fruit."
      else
        @orange_count = (@height * 10) + (rand() * 50).floor
        puts "You're orange tree is now #{@height}m tall and has produced"
        puts "#{@orange_count} oranges!!"
      end
    end
    if @alive && (@height > 10)
      @alive = false
    end
    if !@alive
      "You've plant is no longer alive"
    end

  end

end


