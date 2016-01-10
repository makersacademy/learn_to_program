class Integer
  def factorial
    return 1 if self - 1 == 0
  	self * (self-1).factorial
  end

  def to_roman
  	 solution = []
  	 numerals = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}
  	 counter = self

  	 for numeral, decimal in numerals do
  	   (counter/decimal).floor.times {solution << numerals.key(decimal)}
  	   counter = counter%decimal	
  	 end
  	 solution.join
  end

end