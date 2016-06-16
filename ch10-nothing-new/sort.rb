#  SORTING USING LOOPS:

# arr = ["titus", "paul", "andreea", "lizzy"]
#   OR (any stuff can be sorted)
# arr = [3, 5, 4, 2, 7, 6]

# def sort(arr)  
#   i =0
#   while i < arr.length 
#     j = i + 1
#     while j < arr.length
#       if arr[i] > arr[j]
#         arr[i]  , arr[j] = arr[j], arr[i] 
#       end
#       j += 1 
#     end
#     i += 1
#  end
#  arr
# end 
# puts sort(arr)


# SORTING USING RECURSION (inspiration L2P):

def pre_sort(unsorted, sorted)  
  
  return sorted if unsorted.length <= 0
  
  parked_arr = []
  parked = unsorted.pop

  unsorted.each do |item| 
    if item < parked
      parked_arr.push parked
      parked = item
    else
      parked_arr.push item
    end 
  end

  sorted << parked
  pre_sort(parked_arr, sorted)
end 

def sort(arr)
  pre_sort(arr, [])
end

arr = ["titus", "paul", "andreea", "lizzy"]
puts sort(arr)
