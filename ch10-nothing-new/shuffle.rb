def shuffle some_array
	recursive_shuffle some_array, []
end

def recursive_shuffle unshuffled_array, shuffled_array
	if unshuffled_array.length <= 0
		return shuffled_array
	end

	still_unshuffled = []
	unshuffled_array.each {|object|
		if rand < 0.5
			still_unshuffled.push object
		else 
			shuffled_object = object
			shuffled_array.push shuffled_object
		end
			}

		recursive_shuffle still_unshuffled, shuffled_array
end
