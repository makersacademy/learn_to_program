def dictionary_sort some_array  # your code here
# This "wraps" recursive_sort
sorted_array = [] # this will be the empty sorted array
recursive_sort some_array, sorted_array 
#we first call on our own method in part 2, and define both sorted and unsorted arrays
return sorted_array
#once we have sorted the array and called on its own method the program returns the sorted array
end


def recursive_sort unsorted_array, sorted_array
sorted_array  << unsorted_array.min  #finding the min and push to sorted_array
unsorted_array.delete_at(unsorted_array.index(unsorted_array.min)) 
#deleted the min, the index method finds the first occurence of the minimum 
if unsorted_array.length > 0  #stop the loop when unsorted array is empty
recursive_sort unsorted_array, sorted_array  #recursively sort the array
end

end
