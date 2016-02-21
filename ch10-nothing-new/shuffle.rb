def shuffle arr

   recursive_shuffle(arr,[])

end

def recursive_shuffle(unsorted, shuffled_array)


	until unsorted == []
	 aL = unsorted.length - 1 
	 random = rand(0..aL)
	 shuffled_array << unsorted[random]
	 unsorted.delete_at(random)
	 
	end

 shuffled_array 
end

print shuffle(["How","now","Brown","Cow"])
