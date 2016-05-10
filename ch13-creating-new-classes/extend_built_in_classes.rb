class Integer

  NUMERALS = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }

  def factorial
    if self == 0
      1
    else
      self * (self-1).factorial
    end
  end


  def to_roman
    n = self
    numbers = ""
    NUMERALS.each do |english, roman|
      numbers << roman * (n / english)
      n = n % english
    end
      numbers
  end

end

p 7.factorial


p 129.to_roman
