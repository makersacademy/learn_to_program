class Integer
  def factorial
    return "No factorial of a negative selfber" if self < 0
    return 1 if self <= 1
    self * (self-1).factorial
  end

  def to_roman
    "M"*(self/1000)+"D"*((self%1000)/500)+"C"*((self%500)/100)+"L"*((self%100)/50)+"X"*((self%50/10))+"V"*((self%10/5))+"I"*(self%5)
  end
end

class Array
  def shuffle
    shuffled = []
    for i in 0...self.length do
  	  rand = rand(self.length)
  	  shuffled << self[rand]
  	  self.delete_at(rand)
    end
    shuffled
  end
end