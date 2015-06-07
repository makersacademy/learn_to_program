class OrangeTree

  def initialize
    @height=0
    @orange_count=0
    @alive = true
  end

  def height
    if @alive
      @height.round(2)
    else
      "The tree is dead!"
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      "The tree is dead!"
    end
  end

  def one_year_passes
    if @alive
      @height = @height+2
      @orange_count =0 #fall off at the end of the year
      if @height > (150+rand(20))
        @alive =false
        "The tree has died!"
      elsif @height >6
        @orange_count = (@height *0.8).to_i
        "The tree is now #{@height.round(2)}m tall, and produced #{@orange_count} oranges."
      else
        "The tree is now #{@height.round(2)}m tall, but did not produce any oranges."
      end
    else
      "Yes...the tree is still dead"
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count >0
        "You pick an orange"
      else
        "There are no oranges on the tree!"
      end
    else
      "The tree is dead!"
    end
  end
end

 ot = OrangeTree.new
 4.times do
   ot.one_year_passes
 end
 
 puts ot.height
 puts ot.count_the_oranges
 puts ot.one_year_passes
 puts ot.count_the_oranges
 puts ot.height
 

