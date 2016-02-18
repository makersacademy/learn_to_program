class OrangeTree
  attr_accessor :height, :age, :alive, :oranges



  MAX_AGE = 10
  NEW_ORANGES = 3

  def initialize (height, age)
    self.height = height
    self.age = age
    self.alive = true
    self.oranges = 0

  end

  def one_year_passes
    prng = Random.new
    self.age += 1 if self.alive
    self.height += prng.rand(20) if alive
    self.alive = false if age == MAX_AGE

    self.alive && (self.age > NEW_ORANGES) ? self.oranges = prng.rand(10) : self.oranges = 0
  end

  def pick_oranges(num)

    if not self.alive

      return "this tree is dead"
    else

      if num <= 0
        return "perhaps not..."
      else
        if self.oranges == 0
          return "tough...none left"
        else
          if num < self.oranges
            self.oranges -= num
            return "delicious, aren't they?"
          else
            self.oranges = 0
            return "yummy...but there are now none left"
          end
        end
      end
    end
  end
end
i= 2
prng = Random.new
tree = OrangeTree.new(100,i)

begin
  tree.one_year_passes
  puts "Age: #{tree.age} Height: #{tree.height} Alive: #{tree.alive} Oranges: #{tree.oranges}"

  pick = prng.rand(5)

  puts "Picking #{pick} oranges: #{tree.pick_oranges(pick)}"
  puts "...there are #{tree.oranges} left"


  i+=1
  end while i < 11