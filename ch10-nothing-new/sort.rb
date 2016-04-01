def sort(arr)
 recursive_sort(arr,[])
end

def recursive_sort(unsorted_array, sorted_array)
 unsorted_array.each_with_index {|val, index| val == unsorted_array.min ? sorted_array.push(unsorted_array.delete_at(index)) : false}
 recursive_sort(unsorted_array, sorted_array) until unsorted_array.length == 0
 sorted_array
end
