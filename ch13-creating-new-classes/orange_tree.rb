class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @alive = true

  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @alive
      @oranges

    else
      'A dead tree has no oranges. :('

    end

  end

  def pick_an_orange
    if @alive
      if @oranges > 0
        @oranges = @oranges -1
      else
        "There are no oranges"
      end
    else
    'A dead tree has nothing to pick. :('
    end
  end


def one_year_passes
  if @alive
  @height = @height + 0.4
  @oranges = 0

    if @height > 10 && rand(2) > 0
      @alive = false
      'Oh, no! The tree is too old, and has died. :('

    elsif @height > 2
      @oranges = (@height * 15 - 25).to_i
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.round(0)} oranges."

    end

  else

    'A year later, the tree is still dead. :('

  end



end










end

ot = OrangeTree.new
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.pick_an_orange
puts(ot.height)
puts(ot.count_the_oranges)
