class Integer
	def factorial
    	(self <= 1) ? 1 : self * (self-1).factorial
 	end
	
	def to_roman
		roman_numeral(self)
	end
end	
def roman_numeral num
	numerals = {"I" => 1,"V" => 5,"X" => 10,"L" => 50,"C" => 100,"D" => 500,"M" => 1000}
	# add_subtraction_numerals(numerals) - because the test is shit
	numerals.sort_by{|k,v| -v}.inject(""){|sum,(k,v)|
		i = num/v
		num -= v*i
		sum << k*i
	}
end

def add_subtraction_numerals n
	n.keys.permutation(2).to_a.each{|a,b| n[a+b] = n[b]-n[a] unless (n.values.include?(n[b]-n[a]) || n[b]-n[a]  < 0)}
end