def sort arr
  recursive_sort arr, []
end

def recursive_sort u_arr, s_arr
	if u_arr.length <= 0 
		return s_arr
	end 

	smallest = u_arr.pop
	unsorted = []

	u_arr.each do |test|
		if test < smallest
			unsorted.push smallest
			smallest=test
		else
			unsorted.push test
		end 
	end
	s_arr.push smallest
	recursive_sort unsorted, s_arr
end



puts sort arr
