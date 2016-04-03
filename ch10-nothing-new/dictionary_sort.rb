def dictionary_sort arr 
  rec_dict_sort arr, [] #why do we need to methods?
end

def rec_dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end                     #what do we need this if statement for? Is it to avoid stack overflow?
  
  smallest = unsorted.pop #we take this element as the one to compare with the others
  still_unsorted = [] #array to store elements from original array (unsorted)
  
  unsorted.each do |word|
    if word.downcase < smallest.downcase #it means that "word" goes before in the dictionary
      still_unsorted.push smallest
      smallest = word # it means that the smallest one wansn't really that small
    					#setting the smallest one to a smaller value
    else                        
      still_unsorted.push word		
    end
	end
								#Now "smallest" really does point to the
  								# smallest element that "unsorted" contained,
  								# and all the rest of it is in "still_unsorted".
    sorted.push smallest	#we end up with the smallest  element in sorted
    							
    rec_dict_sort still_unsorted, sorted #are we calling the method inside the method here?? Update: it looks like it(recursion)! 					
 end
#  puts(dictionary_sort([' can' ,' feel' ,' singing.' ,' Like' ,' A' ,' can' ]))