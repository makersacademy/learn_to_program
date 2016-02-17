class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @orange_count = 0
  end

  def height
    @age < 25 ? @height.round(2) : "A dead tree is not very tall. :("
  end

  def one_year_passes
    @age += 1
    @last_year_count = @orange_count
    @orange_count = 0

    @orange_count = 101 if @age == 21
    @orange_count = @last_year_count + 6 if @age > 21

    if @age < 26
      @height += 0.4
      return "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count} oranges."
    end
    @age == 26 ? 'Oh, no! The tree is too old, and has died. :(' : 'A year later, the tree is still dead. :('
  end

  def count_the_oranges
    @age < 25 ? @orange_count : 'A dead tree has no oranges. :('
  end

  def pick_an_orange
    @age < 25 ? oranges_count : "A dead tree has nothing to pick. :("
  end

  private

  def oranges_count
    @oranges_count -=1
  end
end