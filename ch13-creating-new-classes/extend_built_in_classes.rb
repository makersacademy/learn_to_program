# /usr/bin/env ruby
class Array

	def three_set_shuffle 
		# Slice the array into three sets i.e. [[],[],[]]
		three_sets = self.each_slice(3).to_a
		# Let's shuffle the outer array
		three_sets.shuffle!
		# Now let's suffle the inner arrays
		three_sets.each {|set| set.shuffle!}
		# Now let's get back to having just one array of file names
		three_sets.flatten!
	end

end

my_set = [1,2,3,4,5]
puts my_set.three_set_shuffle.inspect