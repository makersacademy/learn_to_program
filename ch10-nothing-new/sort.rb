def sort arr
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
        if x < sorter
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

test_arr = ['Owen', 'Alex', 'Jerry', 'Z', 'Greg', 'Matisse']

puts sort(test_arr)
   
=begin
Without using recursion
def sorted_arr, unsorted_arr
    while unsorted_arr.length > 0
        sorted_arr << unsorted_arr.min
        unsorted_arr.delete(unsorted_arr.min)
    end
    return sorted_arr
end

=end
