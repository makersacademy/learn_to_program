class Array
	def shuffle
		sort_by{rand}
	end
end

class Integer
  def factorial
  	puts "can't factorize negative integers" if self < 0
  	downto(1).inject(:*)
  end

  def to_roman

  	  ths = (self /1000)
	  hs = (self % 1000/100)
	  ts  = (self % 100/10)
	  os  = (self % 10)

	  rn = 'M' * ths
	  
	  if hs == 9
	      rn += "CM"
	  elsif hs == 4
	      rn += "CD"
	  else
	      rn += "D" * (self % 1000/500)
	      rn += "C" * (self % 500/100)
	  end
	  
	  if ts == 9
	      rn += "XC"
	  elsif ts == 4
	      rn += "XL"
	  else
	      rn += "L" * (self % 100/50)
	      rn += "X" * (self % 50/10)
	  end
	  
	  if os == 9
	      rn += "IX"
	  elsif os == 4
	      rn += "IV"
	  else
	      rn += "V" * (self % 10/5)
	      rn += "I" * (self % 5/1)
	  end
  	rn
  end
end