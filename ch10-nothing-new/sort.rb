def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  unsorted.each_with_index do |word, index|
    if word == unsorted.min
      sorted << (unsorted.delete_at(index))
    end
  end
  
  recursive_sort(unsorted, sorted) until unsorted.length == 0
  
  return sorted
end