def sort arr
   # your code here
 def sort arr 
   
   recursive_sort arr, [] # => This is what Pine calls a wrapper. It will call recursive_sort (the method below) within the sort method
   						  # => It will also feed in the two necessary arguments, arr and [] for the first time it calls recursive_sort. 
 
 end
 
 def recursive_sort unsorted, sorted # => unsorted = arr at the very beginning, sorted = []
 
 
 	if unsorted.length <= 0 # => Here I'm saying, if I don't have anything left in my unsorted array, we're done and you can return sorted. 
 					# This my base condition that basically means the loop won't go on forever and ever. 
 		return sorted  
 	end
 
 	smallest = unsorted.pop # => Here I'm just picking the last element in my unsorted array, and saying 'this could be the smallest' 
 							# but we have to test everything else to find out if it is. 
 	yet_to_sort = [] # => this is where I will pile all that didn't make the cut as the smallest. 
 
 	unsorted.each do |tested_element|  # I'm going to rifle through my array of unsorted things, measuring up each element against my potential smallest. 
 
 		if tested_element < smallest
 			yet_to_sort << smallest  
 			smallest = tested_element # I've declared that the tested element was smaller than my phoney 'smallest' from earlier, I now say it's the smallest.
 		else
 			yet_to_sort << tested_element 
 		end
 	end
 
 	sorted << smallest 
 
   	recursive_sort yet_to_sort, sorted #
 
  end