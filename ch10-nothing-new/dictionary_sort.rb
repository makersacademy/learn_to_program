def dictionary_sort arr
	arr.sort_by { |word| word.downcase }
end

#words = ['Can','feel','singing.','like','A','can',"b","B"]
#puts dictionary_sort words