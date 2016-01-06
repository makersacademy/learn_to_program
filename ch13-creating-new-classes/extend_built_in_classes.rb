class Integer

	def to_roman
	  output = ""
	  roman = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }
	  num = self
	  roman.each do |k, v|
	    if num / v > 0
	  	  output << k*(num/v)
	  	  num = num % v
	    end
	  end
	  output
	end

  def factorial
		num = self
		return "Can't process negative numbers" if num < 0
		return 1 if num <= 1
		return num * (num - 1).factorial
  end

end
