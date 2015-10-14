class Integer
def to_roman
	romansplit = Hash.new
	romansplit['M'] = 1000
	romansplit['D'] = 500
	romansplit['C'] = 100
	romansplit['L'] = 50
	romansplit['X'] = 10
	romansplit['IX'] = 9
	romansplit['V'] = 5
	romansplit['IV'] = 4
	romansplit['I'] = 1
	num = self
	final_output = ""
	romansplit.each do |string, int|
		unless num < int
			strcount = num/int
			num = num%int
			output = string * strcount
			final_output = final_output << output
		end
	end
	return final_output
end


def factorial
	if self <= 1
		1
	else
		self * (self-1).factorial
	end
end

end