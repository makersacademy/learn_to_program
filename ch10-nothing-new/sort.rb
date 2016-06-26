
def sort arr # This "wraps" recursive_sort.
    recursive_sort arr, []
end

def recursive_sort unsorted, sorted

    #when to stop...
    if unsorted.length <= 0
      return sorted
    end

    smallest = unsorted.pop
    still_to_sort = []

    unsorted.each do|word|
        if word < smallest
            still_to_sort.push smallest #chuck popped word back as it isn't smallest
            smallest = word #this will be smallest so far 
        else 
            still_to_sort.push word #chuck this one back in again
        end
    end

    sorted.push smallest #take this one 
    
    recursive_sort still_to_sort, sorted
end


arr = ['beaver', 'badger', 'bear', 'lion', 'tiger', 'panda', 'bear', 'giraffe']
puts sort arr
puts arr.sort #to check it's working


