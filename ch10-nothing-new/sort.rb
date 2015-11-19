def sort (array) 
  recursive_sort array, []
end

def recursive_sort unsorted, sorted  
  if unsorted.length <= 0
    return sorted
  end
  unsorted_two = []
  check = unsorted.pop
  unsorted.each do |x|
      if x < check
          unsorted_two.push check
          check = x
      else
          unsorted_two.push x
      end
    
    
end
sorted.push check
recursive_sort(unsorted_two, sorted)
end
