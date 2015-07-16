class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @alive = true
    @oranges = 0
  end

def height
  if @alive
    @height
  else
    "it's dead"
  end

def oranges
  if @alive
      @oranges
  else
      "it's dead"
  end

def one_year_passes
  if @alive
  @age += 1
  @height += 1.5
  @oranges = 0
  if @age => 5
    @oranges += 25
  elsif @age => 15
    @alive = false
    "tree dies"
  else
    "too young to have oranges"
  end
else
  "it's dead"
end

def pick_orange
  if @alive
    if @age => 5
      @orange -= 2
    elsif @age => 15
      "it's dead"
    else
      "no oranges"
    end
  else
    "can't pick a dead tree"
  end





end


























end