class Array
def shuffle array
	final_array = []
	while array.length > 0
	num = 0
	rand_index = rand(array.length)
	size = array.length
	holding_pen = []

	array.each do |x|
		if num == rand_index
		final_array << x
		else
		holding_pen << x
		end
		num = num + 1
	end
array = holding_pen
end
final_array
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
conv = ''
conv = conv + 'M' * (self / 1000)
conv = conv + 'D' * (self % 1000 / 500)
conv = conv + 'C' * (self % 500 / 100)
conv = conv + 'L' * (self % 100 / 50)
conv = conv + 'X' * (self % 50 / 10)
conv = conv + 'V' * (self % 10 / 5)
conv = conv + 'I' * (self % 5 / 1)
return conv

end
end

