class Integer
 

  def shuffle arr
  new_arr = []

  while arr.length > 0
  	rand_number = rand(arr.length)
  	new_arr << arr[rand_number]
  	arr.delete_at(rand_number)
  end
  return new_arr
end

def to_roman
	roman = " "
	roman += "M" * (self / 1000)
	roman += "D" * (self % 1000 / 500)
	roman += 'C' * (self % 500 / 100)
    roman += 'L' * (self % 100 / 50)
    roman += 'X' * (self % 50 / 10)
    roman += 'V' * (self % 10 / 5)
    roman += 'I' * (self % 5 / 1)
end

def factorial
	if self == 0
		return 1
	end
	self * (self-1).factorial
end
end



end