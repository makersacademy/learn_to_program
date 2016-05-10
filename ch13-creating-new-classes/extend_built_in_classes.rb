class Array
	def shuffle
	  arr = self
	  result = []
	  while arr.size > 0
		result << arr.delete_at(rand(arr.length))
	  end
	  result
	end
end



class Integer
  def factorial
  	self <= 1 ? 1 : self * (self-1).factorial
  end

  def to_roman
  	symbols = [
          ['M', 1000],
          ['CM', 900],
          ['D', 500],
          ['CD', 400],
          ['C', 100],
          ['XC', 90],
          ['L', 50],
          ['XL', 40],
          ['X', 10],
          ['VIIII', 9],
          ['V', 5],
          ['IIII', 4],
          ['I', 1]
          ]

  return '' if self == 0
  symbols.each do |str, int|
    if self >= int
      return str + (self - int).to_roman
    end
  end
  end
end