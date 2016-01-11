def sort arr
   # your code here
 def sort arr 
   
   recursive_sort arr, [] 

 end
 
 def recursive_sort unsorted, sorted 
 
 
 	if unsorted.length <= 0 
 	end
 
 	smallest = unsorted.pop 

 	yet_to_sort = [] 
 
 	unsorted.each do |tested_element|  
 
 		if tested_element < smallest
 			yet_to_sort << smallest  
 			smallest = tested_element 
 		else
 			yet_to_sort << tested_element 
 		end
 	end
 
 	sorted << smallest 
 
   	recursive_sort yet_to_sort, sorted 
 
  end