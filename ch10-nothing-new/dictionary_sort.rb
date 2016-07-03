def dictionary_sort arr
  recursive_dict_sort arr, []
end

def recursive_dict_sort unsorted_arr, sorted_arr
  if unsorted_arr.length < 1
    return sorted_arr
  end
  smallest = unsorted_arr[0]
  unsorted_arr.each { |word| smallest = smallest.downcase < word.downcase ? smallest : word }
  unsorted_arr.delete_at unsorted_arr.index smallest
  sorted_arr.push smallest
  return recursive_dict_sort unsorted_arr, sorted_arr
end