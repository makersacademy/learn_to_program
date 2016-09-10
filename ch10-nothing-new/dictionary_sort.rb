# 'wrapper' method for recurrsive method call
def dictionary_sort(arr)
    rec_dic_sort(arr, [])
end

def rec_dic_sort(unsorted, sorted)
    if unsorted.length <= 0 # end condition for recursive call 
        return sorted
    end
    
    smallest = unsorted.pop # sets last object of 'unsorted' array to smallest 
    still_unsorted =[] # creates empty array
    
    unsorted.each do |tested_object| # iterate each element
        if tested_object.downcase < smallest.downcase
            still_unsorted.push(smallest)
            smallest = tested_object
            else
                still_unsorted.push(tested_object)
            end
        end
        # the block moves the smallest (regardless of case) item of 
        # 'unsorted' array to smallest by repetedly iterating (from recursive call) to find 
        # the smallest remaining item each time
        sorted.push(smallest)
        
        rec_dic_sort(still_unsorted, sorted) # recursive call to repeat the 
end        


# my mistake was not finding a way to downcase each element without effecting it 
# perminently, thik its cos i downcased it then assigned it to a variable.
# 
#not working - review answer
=begin
def dictionary_sort(some_array)
    recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
    min_word =[]
    
    if unsorted_array.length == 0
        return sorted_array
    else
        min_word << (unsorted_array.map(&:downcase)).min
        sorted_array << (unsorted_array.map(&:downcase)).min
        min_word.each do |word| 
            unsorted_array.delete_at((unsorted_array.map(&:downcase)).index(word)) end
        recursive_sort(unsorted_array, sorted_array)
    end
end
=end