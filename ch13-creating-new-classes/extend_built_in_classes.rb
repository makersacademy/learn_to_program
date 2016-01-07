class Integer
 def to_roman 

left_digit = self / 1000
remaining_digits = self - (left_digit * 1000)
m = "m" * left_digit

remaining_digits / 500 >= 1 
left_digit = remaining_digits / 500
remaining_digits2 = remaining_digits - (left_digit * 500) 
d = "d" * left_digit  	

remaining_digits2 / 100 >= 1
left_digit = remaining_digits2 / 100
remaining_digits3 = remaining_digits2 - (left_digit * 100)
c = "c" * left_digit

remaining_digits3 / 50 >= 1
left_digit = remaining_digits3 / 50
remaining_digits4 = remaining_digits3 - (left_digit * 50)
l = "l" * left_digit

remaining_digits4 / 10 >= 1
left_digit = remaining_digits4 / 10
remaining_digits5 = remaining_digits4 - (left_digit * 10)
x = "x" * left_digit

remaining_digits5 / 5 >= 1
left_digit = remaining_digits5 / 5
remaining_digits6 = remaining_digits5 - (left_digit * 5)
v = "v" * left_digit

remaining_digits6 / 1 >= 1
left_digit = remaining_digits6 / 1
remaining_digits7 = remaining_digits6 - (left_digit * 1)
i = "i" * left_digit

"#{m}#{d}#{c}#{l}#{x}#{v}#{i}".upcase

end

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


