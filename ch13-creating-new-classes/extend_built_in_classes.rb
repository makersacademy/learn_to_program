class Integer

 	def to_roman
 		romans    = ['I',  'V',  'X',  'L',   'C',   'D',    'M']
	  values    = [ 1,    5,   10,   50,   100,   500,   1000 ]
	  result    = ''
	  num = self

	  values.select!{ |v| v <= num }
	  
	  (values.length-1).downto(0) { |i|
	    max_num = values[i]
	    (num / max_num).times { 
	      result += romans[i]
	      num -= max_num
	    }
	  }
	  
	  result
 	end

 	def factorial(num=self)
 		raise 'You can\'t take the factorial of a negative number!' if num < 0
	  num <= 1 ? 1 : num * factorial(num-1)
	end
end