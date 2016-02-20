def dictionary_sort arr
  recursive_sort(arr,[])
end

def recursive_sort unsorted, sorted

  unsorted_down = unsorted.map {|word| word.downcase}

  min_val = unsorted_down.min
  min_val_i = unsorted_down.find_index(min_val)
  sorted << unsorted[min_val_i]
  unsorted.delete_at(min_val_i)

  unsorted ==[] ? sorted : recursive_sort(unsorted, sorted)
end

# p dictionary_sort(['can','feel','singing.','like','Count','can', 'cursive', 'a'])