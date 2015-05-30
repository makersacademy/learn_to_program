def dictionary_sort words
	return words if words.length <= 1

	middle = words.pop
	less   = words.select{|x| x.downcase <  middle.downcase}
	more   = words.select{|x| x.downcase >= middle.downcase}

	dictionary_sort(less) + [middle] + dictionary_sort(more)
end

dictionary = ['One', 'small', 'step', 'for', 'man', 'One', 'giant', 'leap', 'for', 'Mankind']
puts(dictionary_sort(dictionary))