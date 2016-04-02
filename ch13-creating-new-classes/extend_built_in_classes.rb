class Integer
    
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  
  def to_roman
      
    romans = {
      1000 => "M",
      500 => "D",
      100 => "C",
       50 => "L",
       10 => "X",
        5 => "V",
        1 => "I",
}

      numerals = []
      num = self
      romans.each do |number, letter|
        numerals << letter * (num / number)
        num = num % number
      end
      return numerals.join("")
    end
  end