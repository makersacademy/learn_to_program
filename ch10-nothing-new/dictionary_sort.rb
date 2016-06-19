def pre_sort(unsorted, sorted)  
  
  return sorted if unsorted.length <= 0
  
  parked_arr = []
  parked = unsorted.pop

  unsorted.each do |item| 
    if item.downcase < parked.downcase
      parked_arr.push parked
      parked = item
    else
      parked_arr.push item
    end 
  end

  sorted << parked
  pre_sort(parked_arr, sorted)
end 

def dictionary_sort arr
  # your code here
  pre_sort(arr, [])
end

arr = ["titus", "Paul", "andreea", "lizzy"]
puts dictionary_sort(arr)
