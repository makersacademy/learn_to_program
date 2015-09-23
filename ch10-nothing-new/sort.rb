def sort arr
  recursive_sort arr, []
end

def recursive_sort array, sorted_arr
  if array == []
    return sorted_arr
  end

  unsorted_arr = []
  smallest = array.pop
  array.each do |x|
    if x < smallest
      unsorted_arr.push smallest
      smallest = x
    else unsorted_arr.push x
    end
  end
    sorted_arr.push smallest
    recursive_sort unsorted_arr, sorted_arr
  end
