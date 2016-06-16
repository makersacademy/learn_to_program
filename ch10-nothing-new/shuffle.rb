def shuffle some_array
    recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
    y = -1
    until sorted_array.count == unsorted_array.count
        x = rand(unsorted_array.count)
        if x == y then
        else
        y = x
        sorted_array << unsorted_array[x]
        end
        end
   # print   sorted_array
    end

#sort(['pear','apple', 'banana','orange','blackberry'])