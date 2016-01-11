def dictionary_sort (arr)
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted  
  if unsorted.length <= 0
    return sorted
  end
  unsorted_two = []
  check = unsorted.pop
  unsorted.each do |x|
      if x.downcase < check.downcase
          unsorted_two.push check
          check = x
      else
          unsorted_two.push x
      end
    
    
end
sorted.push check
recursive_sort(unsorted_two, sorted)
end
