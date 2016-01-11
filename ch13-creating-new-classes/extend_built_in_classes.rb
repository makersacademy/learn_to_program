class Integer

  def factorial
  	(1..self).inject(:*)
  end

  def to_roman
  		roman_numerals  = ["M", "D", "C", "L", "X", "V", "I"]
		divisors = [1000, 500, 100, 50, 10, 5, 1]
		answer = []
		divisors.each_with_index {|x, i|  answer << roman_numerals[i] * (self % divisors[i > 0 ? i -1 : 0] / x) }
	if self >= 1000
		answer.unshift("M" * (self / 1000))
		answer.join
	else 
		answer.join
	end
end

end