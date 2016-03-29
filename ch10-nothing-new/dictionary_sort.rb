def dictionary_sort arr
  recursive_dic_sort(arr,[])
end

def recursive_dic_sort(unsorted_array, sorted_array)
  #iterate through the array, check each value (made lowercase) if it is equal to the current min (made lowercase), if it is move it to sorted array
  unsorted_array.each_with_index  {|val, index| val.downcase == unsorted_array.min.downcase ? sorted_array.push(unsorted_array.delete_at(index)) : false}
  #keep running recurive sort until the unsorted_array is empty
  recursive_dic_sort(unsorted_array, sorted_array) until unsorted_array.length == 0
  sorted_array
end
