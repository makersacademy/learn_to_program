def dictionary_sort arr

	return arr if arr.length <= 1

	middle = arr.pop
	lower = arr.select{|element| element.downcase < middle.downcase}
	higher = arr.select{|element| element.downcase >= middle.downcase}

	dictionary_sort(lower) + [middle] + dictionary_sort(higher)
  
end


puts dictionary_sort ['can','feel','singing.','like','A','can']
