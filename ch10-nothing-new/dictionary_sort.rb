def dictionary_sort arr
   recursive_sort arr, []
end

def recursive_sort unsorted_arr, sorted_arr 
    #Check to see if there are elements in the array that need sorting
    if unsorted_arr.length <= 0 
        return sorted_arr
    end
    
    not_sorted = []
    #Get a value to use for comparison
    sorter = unsorted_arr.pop
    unsorted_arr.each {|x|
        #Capitalize to get dictionary sort
        if x.capitalize < sorter.capitalize
            not_sorted << sorter
            sorter = x
        else
            not_sorted << x
        end
    }
    
    sorted_arr << sorter
    
    #Call recursive sort again to get next lowest string
    recursive_sort not_sorted, sorted_arr
end

test_arr = ['Owen', 'alex', 'joe', 'Sam', 'nick']

puts dictionary_sort test_arr