class OrangeTree
  attr_accessor  :age, :alive, :height, :oranges

  ANNUAL_HEIGHT =  [0,0.5,0.9,1.2,1.6,2.0,2.5,3.0,3.2,3.6,4.1,4.2,4.3,4.5,5.0,5.5,6.0,6.5,7.0,7.5,8.0,8.5,9.0,9.6,10.0]
  ANNUAL_ORANGES = [0,0,10,15,20,25,230,35,40,45,50,60,65,70,75,80,85,90,95,100,105,110,115,119,125]

  MAX_AGE = 25


  def initialize
    self.height = 0
    self.age = 0
    self.alive = true
    self.oranges = 0

  end

  def one_year_passes

    if self.alive
      dies = true if age == MAX_AGE

      self.age += 1
      self.alive = false if dies
      if dies
        return "Oh, no! The tree is too old, and has died. :("
        else
          return "This year your tree grew to #{ANNUAL_HEIGHT[self.age-1]}m tall, and produced #{ANNUAL_ORANGES[self.age-1]} oranges."
      end
    else
      return "A year later, the tree is still dead. :("
    end
  end

  def height
    if alive
      return ANNUAL_HEIGHT[self.age-1]
    else
      return "A dead tree is not very tall. :("
    end


  end

  def count_the_oranges
    if alive
      return ANNUAL_ORANGES[self.age-1]
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange


      return "A dead tree has nothing to pick. :(" unless alive

  end
end
