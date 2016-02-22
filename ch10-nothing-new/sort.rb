def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_arr, sorted_arr
	if unsorted_arr.length <= 0
		return sorted_arr
end

smallest = unsorted_arr.pop
still_unsorted_arr = []

unsorted_arr.each do |word|
	if word < smallest
		still_unsorted_arr.push smallest
		smallest = word
	else
		still_unsorted_arr.push word
	end
end

sorted_arr.push smallest

recursive_sort still_unsorted_arr, sorted_arr
end

puts (sort(["these", "are", "a", "few", "words"]))