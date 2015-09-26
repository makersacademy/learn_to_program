def dictionary_sort arr
  # your code here
  dictionary_rec_sort arr, []
end

def dictionary_rec_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array
	end
	s = []
	small = unsorted_array.pop
	unsorted_array.each do |a|
		if a.downcase < small.downcase
			s.push small
			small = a
		else 
			s.push a
		end
	end

	sorted_array.push small

	dictionary_rec_sort(s, sorted_array)

end

puts dictionary_sort ["Bill","bill","David","Dan","benjamin", "Alan","alice"]