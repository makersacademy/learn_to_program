class Integer
  #.shuffle already exists lol 
  def factorial
    return 1 if self <= 1
    self * (self-1).factorial
  end
  #literally WTF the challenge did not say old roman numerial FFS
  def to_roman
    result = ""
    number = self
    roman_mapping.keys.each do |divisor|
      quotient, modulus = number.divmod(divisor)
      result << roman_mapping[divisor] * quotient
      number = modulus
    end
    result
  end
 
  private
 
  def roman_mapping
    {
      1000 => "M",
      500 => "D",
      100 => "C",
      50 => "L",
      10 => "X",
      5 => "V",
      1 => "I"
    }
  end
 
end
