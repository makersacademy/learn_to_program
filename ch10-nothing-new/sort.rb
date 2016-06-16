def sort arr
	sorting(arr, [])
end

def sorting(us_arr, sorted_arr)
	
	if us_arr.length == 0
		return sorted_arr
	end

	still_unsorted = []
	smallest = us_arr.pop

	us_arr.each do |x|
		if x < smallest
			still_unsorted.push smallest
			smallest = x
		else
			still_unsorted.push x
		end
	end

	sorted_arr.push smallest
	sorting(still_unsorted, sorted_arr)

end