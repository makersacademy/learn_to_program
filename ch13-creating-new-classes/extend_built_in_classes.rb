class Integer

  def factorial
  	self.downto(1).reduce(:*)
  end

  def to_roman

 	conversion = {
  	1000 => "M",
  	500 => "D",
  	100 => "C",
  	50 => "L",
  	10 => "X",
  	5 => "V",
  	1 => "I"	
  	}

  	n = self

  	word = ""
  
  	conversion.each do |integer, letter|
		result = n/integer 
			if result > 0 
				word << letter * result
					n -= integer * result
			end
  	end
  	word
	end

end

