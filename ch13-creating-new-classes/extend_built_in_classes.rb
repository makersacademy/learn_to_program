class Array
		def self.shuffle arr
		arr.shuffle
	end
		def self.sort (orig_array, newarr)
	    	if orig_array.length < 1
	        	return newarr
	    	else
	    		newarr << orig_array.select {|x| x == orig_array.min}
	    	orig_array.delete_if {|x| x == newarr.flatten.max}
	    	sorter(orig_array, newarr)
	    	newarr.flatten
	    	end
		end
end

class Integer 
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

	def to_roman 
		number = self

		one_nums = {1000 => "M",
			500 => "D",
			100 => "C",
			50 => "L",
			10 => "X",
			5 => "V",
			1 => "I"
		}

		to_return = ""

		one_nums.each do |k, v|
			to_return << v * (number / k) 
			number = (number % k)
			#if to_return includes "IIII" convert "IIII" to "IV"
		end
		p to_return
	end
end




