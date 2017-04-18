def sort arr
  # your code her
  output = []
  recursive_sort(arr, output)
end

def recursive_sort(unsorted, sorted)
	
	var = unsorted.length
	var.times do
		sorted.push(0)
	end
	unsorted.each do |a|
		@value = 0
		for i	in 0..(var-1)
			a == unsorted[i] ? @value = @value :	@value += (a <=> unsorted[i])
		end
		pos = (@value/2) + (var/2)
		sorted[pos] = a
	end

	sorted
end



		
