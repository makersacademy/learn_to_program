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
	def shuffle
	  shuf = []
	  arr = self

	  while arr.length > 0
	    # Randomly pick one element of the array.
	    rand_index = rand(arr.length)

	    # Now go through each item in the array,
	    # putting them all into new_arr except for the
	    # randomly chosen one, which goes into shuf.
	    curr_index = 0
	    new_arr = []

	    arr.each do |item|
	      if curr_index == rand_index
	        shuf.push item
	      else
	        new_arr.push item
	      end

	      curr_index = curr_index + 1
	    end

	    # Replace the original array with the new,
	    # smaller array.
	    arr = new_arr
	  end
	  shuf
	end
	def new_roman
	  raise 'Must use positive integer' if self <= 0

	  digit_vals = [['I', 5, 1],
	                ['V', 10, 5], 
	                ['X', 50, 10],
	                ['L', 100, 50],
	                ['C', 500, 100],
	                ['D', 1000, 500], 
	                ['M', nil, 1000]]

	  roman = ''
	  remaining = nil

	  # Build string "roman" in reverse.
	  build_rev = proc do |l,m,n|
	    num_l = m ? (self % m / n) : (self / n) 
	    full  = m && (num_l == (m/n - 1))

	  if full && (num_l>1 || remaining)
	    # must carry
	    remaining ||= l # carry l if not already carrying
	  else
	    if remaining
	      roman << l + remaining
	      remaining = nil end
	      roman << l * num_l
	    end 
	  end
	  digit_vals.each {|l,m,n| build_rev[l,m,n]} 

	  roman.reverse
	end
	def to_roman
	  raise 'Must use positive integer' if self <= 0

	  roman = ''

	  roman << 'M' * (self / 1000) 
	  roman << 'D' * (self % 1000 / 500) 
	  roman << 'C' * (self % 500 / 100) 
	  roman << 'L' * (self % 100 / 50) 
	  roman << 'X' * (self % 50 / 10) 
	  roman << 'V' * (self % 10 / 5) 
	  roman << 'I' * (self % 5 / 1)

	  roman
	end
end