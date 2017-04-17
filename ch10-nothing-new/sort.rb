def sort arr

	sorting arr, []
	  
end

def sorting unsorted, sorted

	
	current_item = unsorted.pop


		
		if current_item < current_smallest
			still_unsorted.push current_smallest
			current_smallest = current_item
		else	
			unsorted_array.push current_item
		end	

		if unsorted == unsorted[]
			sorted.push current_smallest
			break
		end

	sorting still_unsorted sorted	

end	

my_array = ["grape", "apple", "satsuma", "carrot"]

puts sort my_array