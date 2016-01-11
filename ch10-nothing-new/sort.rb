def recursive_sort(sorted_array, array)
    return sorted_array if array == []
    sorted_array<<array.min
    array.delete_at(array.index(array.min))
    recursive_sort(sorted_array,array)
end

def sort(array)
  recursive_sort([], array)
end