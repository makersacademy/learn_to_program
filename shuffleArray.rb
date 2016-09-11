def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  sorted_array = unsorted_array.shuffle
end


puts sort ["meems", "meems", "freems", "frrops", "zeeps", "haha"]