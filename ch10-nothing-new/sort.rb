def sort arr
  # your code here
end



def sort some_array
    recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
    #print sorted_array
    until unsorted_array.count == 2
        y = 1
        x = 0
        z = unsorted_array.count
        
        until y == z
            if unsorted_array[x] < unsorted_array[y]
                y += 1
                else
                x = y
                y += 1
            end
        end
        sorted_array << unsorted_array[x]
        unsorted_array.delete_at(x)
        #print sorted_array
    end
    
    if unsorted_array[0]<unsorted_array[1]
        sorted_array << unsorted_array[0]
        sorted_array << unsorted_array[1]
        return sorted_array
        else
        sorted_array << unsorted_array[1]
        sorted_array << unsorted_array[0]
        return sorted_array
    end
    #puts sorted_array
end

sort(['pear','apple', 'banana','orange','blackberry'])