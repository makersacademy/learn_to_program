def sort arr
  recursive_sort arr, []
end

def recursive_sort arr, sorted_arr

  return sorted_arr if arr.length == 0

  unsorted_arr = []
  
  smallest = arr.pop
  
  arr.each do |item|
  
    if item < smallest
      unsorted_arr.push(smallest)
      smallest = item
    else
      unsorted_arr.push(item)
    end

  end

  sorted_arr.push(smallest)

  recursive_sort unsorted_arr, sorted_arr

end