def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_arr, sorted_arr
  if unsorted_arr.length < 1
    return sorted_arr
  end
  smallest = unsorted_arr[0]
  unsorted_arr.each { |word| smallest = smallest < word ? smallest : word }
  unsorted_arr.delete_at unsorted_arr.index smallest
  sorted_arr.push smallest
  return recursive_sort unsorted_arr, sorted_arr
end