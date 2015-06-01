
def sorting stuff

	recursive_sort stuff, []
end

def recursive_sort unsorted_words, sorted_words
	if unsorted_words.length <= 0
		return sorted_words
	end

	smallest = unsorted_words.pop
	still_unsorted = []

	unsorted_words.each do |more_words|
		if more_words < smallest
			still_unsorted.push smallest
			smallest = more_words
		else
			still_unsorted.push more_words
		end
	end

sorted_words.push smallest

recursive_sort still_unsorted, sorted_words

end

puts(sorting(['hat', 'cat', 'bat', 'rat', 'mat', 'sat', 'fat', 'eat', 'tat', 'pat']))