class Integer
  def to_roman 
		raise 'Must use positive integer' if self <= 0
			digit_vals = [['I', 5,      1],
						  ['V', 10,     5],
		      			  ['X', 50,    10],
            			  ['L', 100,   50],
            			  ['C', 500,  100],
            			  ['D', 1000, 500],
            			  ['M', nil, 1000]]
			roman = ''
			remaining = nil
			build_rev = proc do |l,m,n|
				num_l = m ? (self % m / n) : (self / n)
				full = m && (num_l == (m/n - 1))
					if full && (num_l>1 || remaining)
						remaining ||= l 
					else
						if remaining
							roman << l + remaining
							remaining = nil
						end
					roman << l * num_l
					end
				end
			digit_vals.each {|l,m,n| build_rev[l,m,n]}
			roman.reverse
			end
end

puts 22.to_roman