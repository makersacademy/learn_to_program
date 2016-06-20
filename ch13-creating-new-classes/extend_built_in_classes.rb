
class Integer
def factorial
	if self <= 1
	1
	else
	self * (self-1).factorial
	end
end
end

class Integer
def to_roman

num = self
  
decimals = [1000, 500, 100, 50, 10, 5, 1]
numerals = ["M", "D", "C", "L", "X", "V", "I"]

idx = 0
str = ""

while idx < decimals.length
	i = num/decimals[idx]
	num = num % decimals[idx]
	str = str + (numerals[idx].to_s * i)
	idx += 1
end

return str

end
end

