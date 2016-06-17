def shuffle some_array
    recursive_shuffle some_array, []
end

def recursive_shuffle unsorted_array, sorted_array
        x = (0...(unsorted_array.count)).sort_by{rand}
        x.each{|num| sorted_array << unsorted_array[num]}
        return sorted_array
end

#shuffle(['pear','apple', 'banana','orange','blackberry'])