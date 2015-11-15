=begin 
def sort arr

    already_sorted = []

    while arr.length > 0
        arr.each do |x|
        smallest = arr.min
        already_sorted << smallest
        arr.delete(smallest)
        end
    end
    return already_sorted
end
#all well and good but doesn't deal with duplicates
=end

def sort(arr)
   recursive_sort(arr, []) 
end

def recursive_sort(unsorted, sorted)
    if unsorted.length <= 0
        return sorted
    end
    
    smallest = unsorted.pop
    still_unsorted =[]
    
    unsorted.each do |tester|
        if tester < smallest
            still_unsorted.push smallest
            smallest = tester
        else
            still_unsorted.push tester
        end
    end
    sorted.push smallest
    
    recursive_sort(still_unsorted, sorted)
end
