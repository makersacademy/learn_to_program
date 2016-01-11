class Array
	def shuffle
  	self.sort_by { rand }
  end
end

fruits = ['apple', 'banana', 'pear', 'orange', 'mango']

puts fruits.shuffle


class Integer
  def factorial
  	if self < 0
  		return 'You can\'t take the factorial of a negative number!'
  	end

  	if self <= 1
  		1
  	else
  		self * (self-1).factorial
  	end
  end
end


puts 0.factorial
puts -1.factorial
puts 3.factorial


class Integer

  Values = [
  ["M", 1000], 
  ["D", 500], 
  ["C", 100], 
  ["L", 50], 
  ["X", 10], 
  ["V", 5], 
  ["I", 1], 
]

  def to_roman
    roman = ""
    num = self
    Values.each do |letter, value|
      roman += letter*(num / value)
      num = num % value
    end
    return roman
  end

end


puts 4.to_roman
puts 1999.to_roman