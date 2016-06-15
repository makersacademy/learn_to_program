def shuffle unshuffled
		shuffle_recursively unshuffled, []
end

def shuffle_recursively unshuffled, shuffled 
	shuffled.push unshuffled.delete_at(rand(unshuffled.length))
	unshuffled.empty? ? shuffled : shuffle_recursively(unshuffled, shuffled)
end


shuffle([0,1,2,3,4,5,6,7,8,9,10])