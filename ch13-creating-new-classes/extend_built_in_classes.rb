=begin
class Array
	def shuffle
		arr = self
		arr_shuffled = []
		length = arr.length
		arr2 = arr

		while length > 0
			random_index = rand(length)
			y = arr2.at(random_index)
			arr2.delete_at(random_index)
			arr_shuffled.push(y)
			length -= 1
		end
			
		arr_shuffled
	end
end
print ["word",2,3,4,8,9,10,11,12,13,14,15].shuffle
=end

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  def to_roman
    # I chose old-school roman numerals just to save space.
    roman = ''

    roman = roman + 'M' * (self / 1000)
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5 / 1)

    roman
  end
end
  # puts [1,2,3,4,5].shuffle
  # puts 7.factorial
  # puts 73.to_roman
