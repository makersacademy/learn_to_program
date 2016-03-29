def sort(arr)
  recursive_sort(arr,[])
end

def recursive_sort(unsorted_array, sorted_array)
  #iterate through the array, check each value if it is equal to the current min, if it is move it to sorted array
  unsorted_array.each_with_index  {|val, index| val == unsorted_array.min ? sorted_array.push(unsorted_array.delete_at(index)) : false}
  #keep running recurive sort until the unsorted_array is empty
  recursive_sort(unsorted_array, sorted_array) until unsorted_array.length == 0
  sorted_array
end
