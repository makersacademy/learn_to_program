def sort(arr)
    rec_sort arr, [] #Gives the method rec_sort two arguments, one is the same argument given to "sort" (the array to sort), the other is an empty array in which to place the sorted array. These correspond to the arguments defined in the rec_sort method below, unsorted and sorted.
end

def rec_sort unsorted, sorted
    if unsorted.length <= 0
        return sorted
    end
    #if there is nothing in the unsorted array (nothing to sort) then return the sorted argument.

    smallest = unsorted.pop #the variable "smallest" contains the last element from the unsorted array.
    still_unsorted = []

    unsorted.each do |word|
        if word < smallest
            still_unsorted.push smallest
            smallest = word
        else
            still_unsorted.push word
        end
    end

    sorted.push smallest #push the smallest variable into the sorted array.

    rec_sort still_unsorted, sorted
end

puts sort([2, 5, 7, 3, 8])
