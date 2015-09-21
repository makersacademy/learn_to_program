def sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
	i = 0
	while unsorted_array.length > 1
		duplicate = unsorted_array.count(unsorted_array[i])
		n = 0
		(unsorted_array - [unsorted_array[i]]).each do |a|
			if unsorted_array[i].upcase <= a.upcase
				n = n + 1
			end
		end
		if n == (unsorted_array - [unsorted_array[i]]).length
			sorted_array.push [unsorted_array[i]]*duplicate
			unsorted_array = (unsorted_array - [unsorted_array[i]])
			i = 0
		else
			i = i + 1
		end
	end
	sorted_array.push unsorted_array[0]
	puts sorted_array
end


puts "Enter the list of words to be sorted..."
word = gets.chomp
array = []

while word!= ""
	array.push word
	word = gets.chomp
end

sort array