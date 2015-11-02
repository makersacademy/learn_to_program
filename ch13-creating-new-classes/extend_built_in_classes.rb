class Integer
  def to_roman
  	roman = ''
	roman = roman + 'M' * (self / 1000)
	roman = roman + 'D' * (self % 1000 / 500)
	roman = roman + 'C' * (self % 500 / 100)
	roman = roman + 'L' * (self % 100 / 50)
	roman = roman + 'X' * (self % 50 / 10)
	roman = roman + 'V' * (self % 10 / 5)
	roman = roman + 'I' * (self % 5 / 1)
	 # roman
	roman
  end
  
  def factorial
  	(1..self).inject(:*) || 1
  end
end

puts 4.to_roman

puts 5.factorial