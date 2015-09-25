def dictionary_sort arr
  rec_dictionary_sort arr, []
end

def rec_dictionary_sort arr, sorted_arr

  return sorted_arr if arr.length == 0

  unsorted_arr = []
  
  smallest = arr.pop
  
  arr.each do |item|
  
    if item.upcase < smallest.upcase
      unsorted_arr.push(smallest)
      smallest = item
    else
      unsorted_arr.push(item)
    end

  end

  sorted_arr.push(smallest)

  rec_dictionary_sort unsorted_arr, sorted_arr

end