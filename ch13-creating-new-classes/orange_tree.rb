class OrangeTree

  def initialize
    @height  = 0.0
    @age     = 0.0
    @oranges = 0.0
  end

  def one_year_passes
    @height += 0.4
    @oranges = @height * 15 - 25 if @age >= 6
    @age += 1
    one_year_passes_feedback
  end

  def count_the_oranges
    alive? ? @oranges.round : "A dead tree has no oranges. :("
  end

  def height
    alive? ? @height.round(1) : "A dead tree is not very tall. :("
  end

  def pick_an_orange
    alive? ? @oranges -= 1 : 'A dead tree has nothing to pick. :('
  end

  private

  def alive?
    @age.round < 25 ? true : false
  end

  def one_year_passes_feedback
    case @age
    when 0..25
      "This year your tree grew to #{@height.round(1)}m tall, " +
      "and produced #{@oranges.round } oranges."
    when 26
      "Oh, no! The tree is too old, and has died. :("
    when 27..100
      "A year later, the tree is still dead. :("
    end
  end
end
