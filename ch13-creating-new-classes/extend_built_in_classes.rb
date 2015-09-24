class Integer
  def to_roman
  string = ""
  string << "M" * (self / 1000)
  string << "D" * (self % 1000 / 500)
  string << "C" * (self % 500 / 100)
  string << "L" * (self % 100 / 50)
  string << "X" * (self % 50 / 10)
  string << "V" * (self % 10 / 5)
  string << "I" * (self % 5 / 1)
  return string
end

def factorial
	if self < 0
		return "Can't take the factorial of a negative number"
	end
	if self <= 1
		1
	else
		self * (self-1).factorial
	end
end
end