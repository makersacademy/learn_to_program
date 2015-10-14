class OrangeTree
  # your code here
  def initialize name
    @name = name
    @alive = 100
    @count_the_oranges = 0
    @pick_an_orange = 0

  end

  def passage_of_time
    if @alive > 0
      @alive -= 1
    end
  end


  def fruits
    @name

    if @alive > 0 && @alive < 97
      @count_the_oranges += rand(30..100)
    else
      @count_the_oranges += rand(1..20)
    end
    puts "#{@name} is #{@alive} years old"
    passage_of_time

  end

  def orange_count

    picked_up = 0
    10.times do
      picked_up = rand(@count_the_oranges)

    if picked_up < @count_the_oranges
      wasted_organges = @count_the_oranges - picked_up

    puts "#{@name} this year has made #{@count_the_oranges} oranges \nhas wasted #{wasted_organges} oranges and picked up #{picked_up} oranges"
    puts "#{@name} is #{@alive} years old "
  end
    passage_of_time
  end
  end

  def dead
    @name
    if @alive == 0
      puts "#{@name} is dead"
    end

    passage_of_time
  end
end

tree = OrangeTree.new 'mike'
puts tree.fruits
puts tree.orange_count
