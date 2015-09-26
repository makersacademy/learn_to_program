class Integer
  def shuffle 
  arr = self
  shuf = []
  while arr.length > 0
  rand_index = rand(arr.length)
  current_index = 0
  new_arr = []
  
  arr.each do |item|
  	if current_index == rand_index
  	  shuf.push item
  	else
  	  new_arr.push item
  	 end
  	 
  	 current_index = current_index + 1
  	 end
  	 
  	 arr = new_arr
  	end
  	
  	shuf
end
end

class Integer
	def factorial
		if self <= 1
			1
		else
			self * (self-1).factorial
		end
	end
	def to_roman
	x = ''
x = x + 'M' * (self / 1000)
x = x + 'D' * (self % 1000 / 500)
x = x + 'C' * (self % 500 / 100)
x = x + 'L' * (self % 100 / 50)
x = x + 'X' * (self % 50 / 10)
x = x + 'V' * (self % 10 / 5)
x = x + 'I' * (self % 5/ 1)
x
end
end

puts [11,2,3,76,5].shuffle
puts 28.factorial
puts 198.to_roman
