def dictionary_sort arr
  recursive_dict_sort(arr, [])
end

def recursive_dict_sort (unsorted_arr, sorted_arr)
  if unsorted_arr.count <= 0
    return sorted_arr
  end

  to_add = unsorted_arr.shift
  still_unsorted = []

  unsorted_arr.each do |current_obj|
    if current_obj.downcase < to_add.downcase
      still_unsorted << to_add
      to_add = current_obj
    else
      still_unsorted << current_obj
    end
  end

  sorted_arr << to_add
  
  recursive_dict_sort(still_unsorted, sorted_arr)
end