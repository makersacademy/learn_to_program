def shuffle some_array
    recursive_shuffle some_array, []
end

def recursive_shuffle unsorted_array, shuffle_array
    y = -1
    until shuffle_array.count == unsorted_array.count
        x = rand(unsorted_array.count)
        if x == y then
            else
            y = x
            shuffle_array << unsorted_array[x]
        end
    end
    print shuffle_array
    end

#shuffle(['pear','apple', 'banana','orange','blackberry'])